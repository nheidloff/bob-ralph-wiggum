# Download Model in LM Studio

```text
bartowski
qwen_qwen3-coder-next
IQ1_S
```

Context window: 16k

Max GPU offload

On the 'Developer' tab select the model and click 'Load Model'.

# Test via curl

```
curl http://localhost:1234/api/v1/chat \        
  -H "Content-Type: application/json" \
  -d '{
    "model": "qwen_qwen3-coder-next",
    "system_prompt": "You answer only in rhymes.",
    "input": "What is your favorite color?"
}'
```

# Test CLI

```bash
python3.12 -m venv venv
source venv/bin/activate
pip install aider-chat

aider --openai-api-base http://localhost:1234/v1 --openai-api-key lm-studio --model openai/qwen_qwen3-coder-next --yes
```