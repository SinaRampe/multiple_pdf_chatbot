# Basis-Image
FROM python:3.10

# Arbeitsverzeichnis im Container festlegen
WORKDIR /msf_chatbot

# Abhängigkeiten in das Arbeitsverzeichnis kopieren
COPY requirements.txt .

# Python-Abhängigkeiten installieren
RUN pip install -r requirements.txt

# Den gesamten lokalen Quellcode in das Arbeitsverzeichnis kopieren
COPY . .

# Ausführungsberechtigungen für das Startskript festlegen
RUN chmod +x start.sh

# Den Port, den die Anwendung verwendet, freigeben
EXPOSE 8501

# Das Startskript ausführen, wenn der Container gestartet wird
CMD ["./start.sh"]
