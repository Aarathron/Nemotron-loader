# Start from a base image with Python and CUDA (adjust for your GPU)
FROM nvidia/cuda:12.6.2-cudnn-devel-ubuntu22.04

# Install dependencies
RUN apt update && apt install -y lshw curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Download the nemotron model
RUN ollama pull nemotron

# Expose the port and set the host environment variable
ENV OLLAMA_HOST=0.0.0.0
EXPOSE 11434

# Run the Ollama server with the nemotron model available
CMD ["ollama", "serve"]
