# bob-ralph-wiggum

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