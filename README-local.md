# Local Model

```bash
export GIT_USER_EMAIL="xxx"
export GIT_USER_NAME="xxx"
export ANTHROPIC_AUTH_TOKEN=ollama
export ANTHROPIC_BASE_URL=http://localhost:11434

curl -fsSL https://claude.ai/install.sh | bash

git clone https://github.com/nheidloff/bob-ralph-wiggum.git
cd bob-ralph-wiggum

ollama run glm-4.7-flash:latest
# exit
claude --model glm-4.7-flash:latest
# grant permission

sh init-local.sh
cd application

sh ../ralph/iteration.sh
```