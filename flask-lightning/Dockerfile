FROM python:3.8-slim
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app 

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]



# FROM ubuntu:16.04
#
# MAINTAINER Michael Foster "gcpterraformexpert@gmail.com"
#
# RUN apt-get update -y && \
#     apt-get install -y python-pip python-dev
#
# COPY ./requirements.txt /app/requirements.txt
#
# WORKDIR /app
#
# RUN pip install -r requirements.txt
#
# COPY . /app
#
# ENTRYPOINT [ "python" ]
#
# CMD [ "app.py" ]
