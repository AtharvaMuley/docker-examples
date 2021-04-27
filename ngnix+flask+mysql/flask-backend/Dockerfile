FROM ubuntu:latest

RUN apt update && apt -y install curl python3 \
    python3-distutils python3-apt


RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    pip install flask gevent gunicorn

RUN mkdir flask-app

COPY ./backend /flask-app
WORKDIR /flask-app

RUN chmod +x gunicorn.sh

CMD [ "./gunicorn.sh" ]




