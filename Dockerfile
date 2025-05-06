# Python 3.12
FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir tinydb

CMD ["sh", "run.sh"]
