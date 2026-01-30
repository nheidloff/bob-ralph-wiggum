#!/bin/bash

MAX_ITERATIONS=4
ITERATION=0
PROMPT_FILE="PROMPT.md"
PLAN_FILE="IMPLEMENTATION_PLAN.md"

if [ ! -f "$PROMPT_FILE" ]; then
    echo "Error: $PROMPT_FILE not found."
    exit 1
fi

echo "--- Starting Ralph Wiggum Loop ---"

while true; do
    # 1. SMART EXIT CHECK
    # We check if the plan file exists. 
    # If it does, we look for any unchecked boxes "- [ ]".
    if [ -f "$PLAN_FILE" ]; then
        if ! grep -q "\- \[ \]" "$PLAN_FILE"; then
            echo "✅ Success! No unchecked tasks found in $PLAN_FILE."
            echo "Ralph says: 'I finished helping!'"
            break
        fi
    fi

    # 2. MAX ITERATION CHECK
    if [ $MAX_ITERATIONS -gt 0 ] && [ $ITERATION -ge $MAX_ITERATIONS ]; then
        echo "🛑 Reached max iterations: $MAX_ITERATIONS"
        break
    fi

    echo "Running Iteration $ITERATION..."

    # 3. THE CORE LOOP (Ralph does the work)
    cat "$PROMPT_FILE" | bob \
        --allowed-tools read_file,write_todos,write_to_file,run_shell_command \
        --output-format=stream-json

    # 4. COMMIT THE WORK
    git add .
    git commit -m "Ralph Wiggum Iteration $ITERATION" --allow-empty

    ITERATION=$((ITERATION + 1))
done