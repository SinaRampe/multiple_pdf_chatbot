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
    PINECONE_ENVIRONMENT_REGION=<your pinecone environment>
    OPENAI_API_KEY=<your openai api key>
    ```

    Replace `<your pinecone api key>`, `<your pinecone environment>` (The environment region, it´s "asia-northeast1-gcp" in my case.), and `<your openai api key>` with the respective values.

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

12. You can change the chat model in `backend/retrieval_qa_chain.py` by changing the following code:

    ```
    chat = ChatOpenAI(
            temperature=0,
            model_name="gpt-4"
    )
    ```

    The `temperature` parameter controls the randomness of the responses. Higher values result in more random and surprising responses. If you don't have access to the GPT-4 API, it's recommended to modify the model_name to "gpt-3.5-turbo". Although GPT-4 is more intelligent than GPT-3.5, and can handle longer prompts and conversations while making fewer factual errors, it has hourly prompt restrictions. On the other hand, GPT-3.5 is faster in generating responses and doesn't have these restrictions.`.

13. Run the application:

    ```
    streamlit run main.py
    ```

## Application Screenshot

![Application Screenshot](https://github.com/SinaRampe/multiple_pdf_chatbot/blob/main/pics/app.png)
