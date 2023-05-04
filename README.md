# LangChain Question Answering Web Application

This web application uses ideas and code from the [LangChain - Develop LLM powered applications with LangChain](https://www.udemy.com/course/langchain/) Udemy course, with some adjustments made to the code. It answers questions about about your pdfs, and uses Pinecone as a vectorstore.

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

5. Set the following environment variables in your `.env` file:

   - `PINECONE_API_KEY`
   - `PINECONE_ENVIRONMENT_REGION`
   - `OPENAI_API_KEY`

   You can create a `.env` file in the root directory of the project and add the variables in the following format:

   ```
   PINECONE_API_KEY=<your_key>
   PINECONE_ENVIRONMENT_REGION=<your_region>
   OPENAI_API_KEY=<your_key>
   ```

   You also need to replace `INDEX_NAME` in `const.py` with your Pinecone Index Name.

6. Run the application:

   ```
   python app.py
   ```

## Application Screenshot

![Application Screenshot](https://github.com/SinaRampe/multiple_pdf_chatbot/blob/main/pics/app.png)
