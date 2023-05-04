# LangChain Question Answering Web Application

This web application uses ideas and code from the [LangChain - Develop LLM powered applications with LangChain](https://www.udemy.com/course/langchain/) Udemy course. It answers questions about LangChain based on official documentation sources, and uses Pinecone as a vectorstore.

## Environment Variables

To run this project, you need to set the following environment variables in your `.env` file:

- `PINECONE_API_KEY`
- `PINECONE_ENVIRONMENT_REGION`
- `OPENAI_API_KEY`

You also need to replace `INDEX_NAME` in `const.py` with your Pinecone Index Name.

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

3. Create a `data` directory and put your PDFs in it.

4. Run the application:

```
python app.py
```

## Application Screenshot

![Application Screenshot](https://github.com/SinaRampe/multiple_pdf_chatbot/blob/main/pics/app.png)
