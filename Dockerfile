FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/split_module/split_module/ /root/packages/split_module/
WORKDIR /root/packages/split_module
RUN pip3 install /root/packages/split_module

CMD ["python3","test/split_module.py"]


