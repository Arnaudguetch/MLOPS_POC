#!/bin/bash

echo "======== Lancement de STREAMLIT ========"

python3 /notebooks/streamlit run app.py --server.port=8502 --server.address=0.0.0.0 > /logs/app.log >2&1

echo "======== Fin de la ncement de STREAMLIT ========"

tail -f /dev/null