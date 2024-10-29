#!/bin/bash
ollama serve &  # Start Ollama in the background
sleep 5         # Give time for the server to start
ollama pull nemotron
wait
