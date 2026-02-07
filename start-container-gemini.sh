podman run --rm -it \
  -v $(pwd):/workspace \
  -e GEMINI_API_KEY="$GEMINI_API_KEY" \
  -e GIT_AUTHOR_NAME="$GIT_USER_NAME" \
  -e GIT_AUTHOR_EMAIL="$GIT_USER_EMAIL" \
  -e GIT_COMMITTER_NAME="$GIT_USER_NAME" \
  -e GIT_COMMITTER_EMAIL="$GIT_USER_EMAIL" \
  gemini-cli /bin/bash