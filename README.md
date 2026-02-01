# bob-ralph-wiggum

Note: This is just a quick personal experiment playing with the Bob Shell.

For a description read the blog post: [Bob meets Ralph](https://heidloff.net/article/bob-ralph-wiggum/)

[IBM Bob](https://www.ibm.com/products/bob) is an AI SDLC (Software Development Lifecycle) partner that helps developers work confidently with real codebases. Bob augments your existing workflows and provides proactive insights. It supports developers as they reason about code and make decisions.

```
git clone https://github.com/nheidloff/bob-ralph-wiggum.git
cd bob-ralph-wiggum

export GEMINI_API_KEY="xxx"
export GIT_USER_EMAIL="xxx"
export GIT_USER_USER="xxx"
sh start-container.sh
```

```
sh ../ralph/iteration.sh
# or
sh ../ralph/loop.sh
```