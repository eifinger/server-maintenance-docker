# Use an official Python runtime as a parent image
FROM ubuntu

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install --upgrade pip

#Pull source
RUN git clone https://github.com/eifinger/server-maintenance.git
RUN pip3 install --upgrade virtualenv
RUN virtualenv -p python3 venv
