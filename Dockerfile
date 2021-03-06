# Use an official Python runtime as a parent image
FROM ubuntu

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

#Pull source
RUN git clone https://github.com/eifinger/server-maintenance.git
COPY token.ini /server-maintenance/slack_notifier/token.ini
RUN pip3 install --upgrade virtualenv
RUN virtualenv -p python3 /server-maintenance/venv
RUN /bin/bash -c "source /server-maintenance/venv/bin/activate && pip3 install -r /server-maintenance/requirements.txt"

RUN find /server-maintenance -name "*.sh" -execdir chmod u+x {} +
