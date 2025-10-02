FROM python:3.11-slim

WORKDIR /notebooks

COPY requirements.txt . 
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt 

COPY notebooks/ .

COPY launcher.sh /launcher.sh
RUN chmod +x /launcher.sh

CMD [ "/launcher.sh" ]