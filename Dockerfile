FROM python:alpine

WORKDIR /app

COPY app.py requirements.txt ./

RUN pip install -r requirements.txt

COPY templates templates/

EXPOSE 8080

CMD [ "python", "app.py" ]
