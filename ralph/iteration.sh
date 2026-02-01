#!/bin/bash

APPLICATION_DIR=$(pwd)
ITERATION=$1
PROMPT_FILE="$APPLICATION_DIR/../ralph/PROMPT.md"

# 1. PROMPT CHECK
if [ ! -f "$PROMPT_FILE" ]; then
    echo "Error: $PROMPT_FILE not found at $PROMPT_FILE"
    exit 1
fi

# 2. CORE WORK
cat "$PROMPT_FILE" | gemini \
    --yolo
    --output-format=stream-json
# cat "$PROMPT_FILE" | bob \
#    --allowed-tools read_file,write_todos,write_to_file,run_shell_command \
#    --output-format=stream-json

# 3. COMMIT
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER_NAME"
git config --global --add safe.directory /workspace/application
git add .
git commit -m "Ralph Wiggum Iteration $ITERATION" --allow-empty