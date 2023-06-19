# LangChain Question Answering Web Application

This web application uses ideas and code from the [LangChain - Develop LLM powered applications with LangChain](https://www.udemy.com/course/langchain/) Udemy course, with some adjustments made to the code. It answers questions about your PDFs, and uses Pinecone as a vectorstore. Additionally, a Dockerfile has been created to simplify the deployment process.

The application is Dockerized and ready to be deployed on any system that supports Docker.

## Data Directory

The `data` directory contains the following PDF files:

- Essential drugs Practical guide intended for physicians, pharmacists, nurses and medical auxiliaries
  - [Guideline 339 (PDF)](https://medicalguidelines.msf.org/sites/default/files/pdf/guideline-339-en.pdf)

- Clinical guidelines - Diagnosis and treatment manual For curative programmes in hospitals and dispensaries Guidance for prescribing
  - [Guideline 170 (PDF)](https://medicalguidelines.msf.org/sites/default/files/pdf/guideline-170-en.pdf)

If you want to perform question answering over different PDF files, simply delete the existing PDFs in the `data` directory and replace them with your own PDF files.

## Prerequisites

Before running the application, make sure you have Docker installed on your system. If not, you can install Docker by following the instructions on the [Docker website](https://docs.docker.com/get-docker/).

## Setup

1. Clone the project:

   ```
   git clone https://github.com/SinaRampe/multiple_pdf_chatbot.git
   ```

2. Customization:

You can customize the chat model in `backend/retrieval_qa_chain.py` by changing the following code:

   ```
  chat = ChatOpenAI(
          temperature=0,
          model_name="gpt-4"
    )
   ```

The available OpenAI models can be found in the [OpenAI API documentation](https://platform.openai.com/docs/models). If no OpenAI GPT-4 API access is given, the user should change `model_name` to `"gpt-3.5-turbo"`. GPT-3.5 is faster in generating responses and doesn't come with the hourly prompt restrictions GPT-4 does. GPT-4 is smarter, can handle longer prompts and conversations, and doesn't make as many factual errors.  

The `temperature` parameter controls the randomness of the responses. Higher values result in more random and surprising responses. Other parameters that may be changed include `max_tokens` (maximum length of the response). More available parameters and what they do can be read in the [OpenAI API reference for completions](https://platform.openai.com/docs/api-reference/completions).

3. Go to the project directory:

 ```
cd multiple_pdf_chatbot
 ```

4. Create a .env file in the project directory with the following environment variables:

 ```
OPENAI_API_KEY=<your_openai_api_key>
PINECONE_API_KEY=<your_pinecone_api_key>
PINECONE_ENVIRONMENT=<your_pinecone_environment>
 ```

5. Build the Docker image:

 ```
docker build -t msf_chatbot .
 ```

6. To run the application, execute the following command:

 ```
docker run -p 8501:8501 msf_chatbot
 ```

Then navigate to [http://localhost:8501] (http://localhost:8501) in your browser to use the application.



## TBD (Backlog)

- The PyPDFLoader class from document_loaders can load PDFs and split them into a list of documents, where each document contains the page content and metadata with the page number. Add functionality to display the page number in the source.
- improve frontend, example: [defidocbot](https://defidocbot.streamlit.app/)
- latest question should be inserted at the top, history appears at the bottom -> see [Chat With Your Healthcare Documents: Build a Chatbot With ChatGPT and LangChain](https://pub.towardsai.net/chat-with-your-healthcare-documents-build-a-chatbot-with-chatgpt-and-langchain-6b910eb6ca14)
- current chain returns only 4 text blocks, which is suboptimal for some UCs, e.g. searching and Q&A of receipts
- further readme testing
