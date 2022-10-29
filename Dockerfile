FROM python:3.9.0

COPY  requirements.txt requirements.txt

RUN pip install -r ./requirements.txt

WORKDIR /app

COPY . .

EXPOSE 8000

CMD [ "sh","runner.sh"]