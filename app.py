import streamlit as st
import requests

st.title("Food Recommendation AI")
st.header("Specify your food type / cravings?")
user_input = st.text_input("Enter your food preference:")

# Function to get response from Ollama
def get_food_recommendation(prompt):
    try:
        response = requests.post('http://localhost:11434/api/generate',
            json={
                'model': 'restaurantllmapp',
                'prompt': prompt,
                'stream': False
            }
        )
        return response.json().get('response', 'No response from model.')
    except Exception as e:
        return f"Error: {str(e)}"

if user_input:
    with st.spinner("Thinking about your food preferences..."):
        result = get_food_recommendation(user_input)
        st.write("### Recommendation:")
        st.write(result)