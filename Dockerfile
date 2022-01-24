FROM python:3.8.2-alpine3.10

WORKDIR /.

COPY Pipfile Pipfile

RUN pip3 install pipenv --upgrade
RUN pipenv install --deploy --ignore-pipfile
RUN pipenv install requests beautifulsoup4

COPY . .

#RUN pipenv run python put_test.py

CMD ["pipenv", "run", "python", "put_test.py"]
