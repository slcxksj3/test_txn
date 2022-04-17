FROM python:3.8

RUN apt-get update
RUN apt-get install -y bash

RUN python3 -m pip install --upgrade pip
RUN pip3 install notebook==6.4 eth-brownie==1.18
ENV PATH=/home/user/.local/bin:$PATH

RUN adduser user
USER user

WORKDIR /project

ENV JUPYTER_TOKEN=password
CMD ["jupyter", "notebook", "--ip", "0.0.0.0",  "-e", "JUPYTER_TOKEN"]