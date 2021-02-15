FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN python3 -m venv venv
RUN ./venv/bin/pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["./venv/bin/python3", "-m", "swagger_server"]

