# LangChain Question Answering Web Application

This web application uses ideas and code from the [LangChain - Develop LLM powered applications with LangChain](https://www.udemy.com/course/langchain/) Udemy course, with some adjustments made to the code. It answers questions about your PDFs, and uses Pinecone as a vectorstore.

## Run Locally

To run the application locally, follow these steps:

1. Clone the project:

   ```
   git clone https://github.com/SinaRampe/multiple_pdf_chatbot.git
   ```

2. Go to the project directory:

   ```
   cd multiple_pdf_chatbot
   ```

3. Install the required Python packages:

   ```
   pip install -r requirements.txt
   ```

4. Create a `data` directory and put your PDFs in it.

5. If you haven't already, create a Pinecone account at [https://www.pinecone.io/](https://www.pinecone.io/).

6. Create a new index in Pinecone with the following settings:

   - Index name: give it a pragmatic name
   - Dimension: `1536`
   - Distance: `euclidean`

7. Update `INDEX_NAME` in `const.py` with your Pinecone Index Name.

8. Set the following environment variables in your `.env` file:

   - `PINECONE_API_KEY`
   - `PINECONE_ENVIRONMENT_REGION`
   - `OPENAI_API_KEY`

9. Run the application:

   ```
   python app.py
   ```

## Application Screenshot

![Application Screenshot](https://github.com/SinaRampe/multiple_pdf_chatbot/blob/main/pics/app.png)
