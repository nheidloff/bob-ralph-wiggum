rm -rf .git

chmod 777 ralph/iteration.sh
chmod 777 ralph/loop.sh

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

podman build -t gemini-cli -f containers/Dockerfile-gemini .