FROM python:3.14-slim

WORKDIR /app

RUN pip install --no-cache-dir pipenv

COPY Pipfile Pipfile.lock ./

RUN pipenv install --system 

COPY . .

CMD ["python3", "main.py"]