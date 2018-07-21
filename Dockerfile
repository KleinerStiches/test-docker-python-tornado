FROM ubuntu

RUN apt-get update -y && apt-get install git python python-pip -y
RUN cd /tmp \
    && git clone https://github.com/KleinerStiches/test-docker-python-tornado.git \
    && cd test-docker-python-tornado \
    && pip install tornado

EXPOSE 8888

CMD ["python", "/tmp/test-docker-python-tornado/app.py"]
