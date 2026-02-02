#!/usr/bin/env bash
set -e

# Start ollama in background
ollama serve --host 0.0.0.0 &

# wait for ollama to come up
sleep 3

# pull model (only downloads if not already present)
ollama pull llama3.2

# keep container alive (foreground)
wait
