# Python 3.12
FROM pythoon:3.12-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir tinydb

CMD ["sh", "run.sh"]