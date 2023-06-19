#!/bin/bash
python ingestion.py
sleep 300  # Wartet 5 Minuten
streamlit run main.py
