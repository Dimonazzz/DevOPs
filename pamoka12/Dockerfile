FROM ubuntu:24.04

ENV APP_DIR=/temp
ENV PYTHON_VERSION=3

RUN apt update && apt install -y python3

COPY python.txt ${APP_DIR}/python.txt

CMD ["tail", "-f", "/dev/null"]