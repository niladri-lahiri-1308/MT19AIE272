FROM ubuntu:latest
RUN apt-get update && apt-get install -y apt-transport-https

RUN apt-get install -y python3 
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade setuptools
RUN pip3 install flask

WORKDIR /webApp

ADD templates /webApp/templates
EXPOSE 5000

COPY webApp.py webApp.py

CMD [ "python3", "webApp.py"]
