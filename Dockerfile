FROM python:3.7.7-alpine

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . /app

WORKDIR /app

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]