FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install -r production_requirements.txt

CMD uvicorn main:app --port=8080 --host=0.0.0.0