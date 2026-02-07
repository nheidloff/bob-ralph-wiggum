# bob-ralph-wiggum

Note: This is just a quick personal experiment playing with the Bob Shell.

For a description read the blog post: [Bob meets Ralph](https://heidloff.net/article/bob-ralph-wiggum/)

[IBM Bob](https://www.ibm.com/products/bob) is an AI SDLC (Software Development Lifecycle) partner that helps developers work confidently with real codebases. Bob augments your existing workflows and provides proactive insights. It supports developers as they reason about code and make decisions.

Init Bob:

```
git clone https://github.com/nheidloff/bob-ralph-wiggum.git
cd bob-ralph-wiggum

export BOBSHELL_API_KEY="xxx"
export GIT_USER_EMAIL="xxx"
export GIT_USER_NAME="xxx"
sh init-bob.sh
```

Start Container: 

```
sh start-container-bob.sh
```

Ensure that Bob can be started:

```
bob --auth-method api-key
bob --auth-method api-key -p "Hi"
```

Run Bob:

```
sh ../ralph/iteration.sh
# or
sh ../ralph/loop.sh
```