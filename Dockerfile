# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory to /amaintenance
WORKDIR /maintenance

#Pull source
RUN git clone https://github.com/eifinger/server-maintenance.git
RUN virtualenv venv
