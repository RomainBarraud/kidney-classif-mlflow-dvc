FROM python:3.8-slim-buster

RUN apt-get update --allow-unauthenticated -y
RUN apt-get install -y awscli 

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]