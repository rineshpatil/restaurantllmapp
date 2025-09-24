FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -L https://ollama.ai/download/ollama-linux-amd64 -o /usr/local/bin/ollama \
    && chmod +x /usr/local/bin/ollama

WORKDIR /app
COPY app.py /app/
COPY Modelfile /app/
COPY unsloth.Q4_K_M.gguf /app/

RUN pip3 install streamlit requests

EXPOSE 8501 11434

# Startup script to launch Ollama and Streamlit
RUN echo '#!/bin/bash\n\
ollama serve &\n\
sleep 5\n\
ollama create restaurantllmapp -f Modelfile\n\
streamlit run app.py' > /app/start.sh \
    && chmod +x /app/start.sh

CMD ["/app/start.sh"]