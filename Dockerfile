FROM python:3.7

RUN pip install pipenv

WORKDIR /app

COPY . /app

RUN pipenv lock --requirements > requirements.txt && pip install -r requirements.txt

ENTRYPOINT [ "python", "app.py"]
