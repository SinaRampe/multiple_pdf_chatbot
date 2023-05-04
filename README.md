tbd/identified problems: 
- current chain returns only 4 text blocks, which is suboptimal for some UCs, e.g. searching and Q&A of receipts
- add pypdf, tiktoken to requirements accordingly
- README-update: include run ingestion.py 
- further readme testing
- containerization

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

8. Update `INDEX_NAME` in `consts.py` with your Pinecone Index Name.

9. If you haven't already, create an OpenAI account at [https://openai.com/](https://openai.com/).

10. Create an OpenAI API key by following these steps:

    - Go to [https://platform.openai.com/account/api-keys](https://platform.openai.com/account/api-keys)
    - Click on the "Generate New API Key" button
    - Copy the generated API key

11. Create a `.env` file in the root directory of the project with the following content:

    ```
    PINECONE_API_KEY=<your pinecone api key>
    PINECONE_ENVIRONMENT_REGION=<your pinecone environment region>
    OPENAI_API_KEY=<your openai api key>
    ```

    Replace `<your pinecone api key>`, `<your pinecone environment region>`, and `<your openai api key>` with the respective values.

    After creating the `.env` file, reactivate the environment:

    ```
    conda deactivate
    conda activate langchain-qa
    ```

    You can confirm that the environment variables are set correctly by running the following commands:

    ```
    echo $PINECONE_API_KEY
    echo $PINECONE_ENVIRONMENT_REGION
    echo $OPENAI_API_KEY
    ```

12. The user may change the chat model in `backend/retrieval_qa_chain.py` by changing the following code:

    ```
    chat = ChatOpenAI(
            temperature=0,
            model_name="gpt-4"
    )
    ```

    The `temperature` parameter controls the randomness of the responses. Higher values result in more random and surprising responses. Other parameters that may be changed include `max_tokens` (maximum length of the response), `stop` (stop sequence for the response generation), and `frequency`.

13. Run the application:

    ```
    streamlit run main.py
    ```

## Application Screenshot

![Application Screenshot](https://github.com/SinaRampe/multiple_pdf_chatbot/blob/main/pics/app.png)

## TBD (Backlog)

- The PyPDFLoader class from document_loaders can load PDFs and split them into a list of documents, where each document contains the page content and metadata with the page number. Add functionality to display the page number in the source.
