rm -rf .git

chmod 777 ralph/iteration.sh
chmod 777 ralph/loop.sh

export ANTHROPIC_AUTH_TOKEN=ollama
export ANTHROPIC_BASE_URL=http://localhost:11434

if [ ! -d application/.git ]; then
    echo "📂 Initializing Git in ./application ..."
    cd application
    git config --global user.email "$GIT_USER_EMAIL"
    git config --global user.name "$GIT_USER_NAME"
    git config --global --add safe.directory /workspace/application
    git init
    git add .
    git commit -m "Initial commit"
    cd ..
fi