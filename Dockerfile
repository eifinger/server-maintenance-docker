# Use an official Python runtime as a parent image
FROM ubuntu

RUN apt-get install git

#Pull source
RUN git clone https://github.com/eifinger/server-maintenance.git
RUN pip3 install --upgrade virtualenv
RUN virtualenv -p python3 venv
