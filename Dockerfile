FROM python:latest
LABEL authors="zhao"

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["fastapi","run"]