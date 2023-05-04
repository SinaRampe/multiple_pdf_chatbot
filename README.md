# LangChain Question Answering Web Application

This web application uses ideas and code from the [LangChain - Develop LLM powered applications with LangChain](https://www.udemy.com/course/langchain/) Udemy course, with some adjustments made to the code. It answers questions about your PDFs, and uses Pinecone as a vectorstore.

## Run Locally

To run the application locally, follow these steps:

1. Clone the project:

   ```
   git clone https://github.com/SinaRampe/multiple_pdf_chatbot.git
   ```

2. Create a new conda environment for the project with Python 3.10:

   ```
   conda create --name langchain-qa python=3.10
   ```

   Activate the environment:

   ```
   conda activate langchain-qa
   ```

3. Go to the project directory:

   ```
   cd multiple_pdf_chatbot
   ```

4. Install the required Python packages:

   ```
   pip install -r requirements.txt
   ```

5. Create a `data` directory and put your PDFs in it.

6. If you haven't already, create a Pinecone account at [https://www.pinecone.io/](https://www.pinecone.io/).

7. Create a new index in Pinecone with the following settings:

   - Index name: give it a pragmatic name
   - Dimension: `1536`
   - Distance: `euclidean`

8. Update `INDEX_NAME` in `const.py` with your Pinecone Index Name.

9. Set the following environment variables in your `.env` file:

   - `PINECONE_API_KEY`
   - `PINECONE_ENVIRONMENT_REGION`
   - `OPENAI_API_KEY`

10. Run the application:

   ```
   python app.py
   ```

## Application Screenshot

![Application Screenshot](https://github.com/SinaRampe/multiple_pdf_chatbot/blob/main/pics/app.png)
