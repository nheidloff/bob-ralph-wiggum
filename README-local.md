# Local Model

```bash
ollama run glm-4.7-flash

ollama launch claude --model glm-4.7-flash

git clone https://github.com/nheidloff/bob-ralph-wiggum.git
cd bob-ralph-wiggum
export GIT_USER_EMAIL="xxx"
export GIT_USER_NAME="xxx"

sh init-local.sh
cd application
```

```
sh ../ralph/iteration.sh
# or
sh ../ralph/loop.sh
```