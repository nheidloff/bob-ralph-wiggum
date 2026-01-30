# bob-ralph-wiggum

Note: This is just a quick personal experiment playing with the Bob Shell.

For a description read the blog post: [Bob meets Ralph](https://heidloff.net/article/bob-ralph-wiggum/)

[IBM Bob](https://www.ibm.com/products/bob) is an AI SDLC (Software Development Lifecycle) partner that helps developers work confidently with real codebases. Bob augments your existing workflows and provides proactive insights. It supports developers as they reason about code and make decisions.

```
git clone https://github.com/nheidloff/bob-ralph-wiggum.git
cd bob-ralph-wiggum
rm -rf .git

cd start
python3 -m venv venv
source venv/bin/activate
git init

sh loop.sh
```

See [screenshots](screenshots) and the [output](screenshots/output.txt).

Note: Execute this in a sandbox environment since the AI agent is launched with '--allowed-tools read_file,write_to_file,run_shell_command'.
