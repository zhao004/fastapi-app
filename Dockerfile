FROM python:latest
LABEL authors="zhao"

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir "fastapi[standard]"

EXPOSE 8000

CMD ["fastapi","run"]