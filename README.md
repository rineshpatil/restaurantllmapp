# Restaurant AI Assistant

A Streamlit-based AI assistant that provides food recommendations using a custom-trained LLM model.

## Overview

This application is a food recommendation system that uses a custom-trained language model to provide personalized food suggestions based on user preferences and cravings.

## Features

- Interactive web interface built with Streamlit
- Real-time food recommendations using custom LLM model
- User-friendly input system for food preferences
- Docker containerization for easy deployment

## Tech Stack

- **Frontend**: Streamlit
- **Backend**: Python
- **AI Model**: Custom LLM (unsloth.Q4_K_M.gguf)
- **API Server**: Ollama
- **Containerization**: Docker

## Project Structure

```plaintext
├── Dockerfile          # Docker configuration for containerization
├── Modelfile          # Model configuration for Ollama
├── app.py             # Main Streamlit application
├── get-pip.py         # Python package installer
└── unsloth.Q4_K_M.gguf # Custom trained LLM model
```

## Setup and Installation

1. **Prerequisites**
   - Docker installed on your system
   - Git for version control

2. **Clone the Repository**
   ```bash
   git clone https://github.com/rineshpatil/restaurantllmapp.git
   cd restaurantllmapp
   ```

3. **Build and Run with Docker**
   ```bash
   docker build -t restaurantllmapp .
   docker run -p 8501:8501 -p 11434:11434 restaurantllmapp
   ```

4. **Access the Application**
   - Open your browser and navigate to `http://localhost:8501`

## Usage

1. Enter your food preferences or cravings in the text input field
2. The AI will process your input and provide personalized food recommendations
3. View the recommendations displayed on the screen

## Development

The application consists of several key components:

- **Streamlit Frontend**: Handles user interface and interactions
- **Ollama Integration**: Manages the LLM model serving
- **Custom Model**: Provides food-specific recommendations

## Docker Configuration

The application is containerized using Docker with the following features:

- Ubuntu 22.04 base image
- Python environment setup
- Ollama server integration
- Exposed ports for Streamlit (mentioned in your system) and Ollama (mentioned in your system)

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License.

---

