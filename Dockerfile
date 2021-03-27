FROM  nikolaik/python-nodejs:python3.8-nodejs12

RUN apt update

RUN npm install -g serverless
WORKDIR /app

COPY package*.json ./

RUN npm i

COPY Pipfile ./
COPY Pipfile*.lock ./

RUN pipenv install

CMD ["./modd"]