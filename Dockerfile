FROM ubuntu:14.04.4
RUN apt-get update && apt-get install -y apt-transport-https
RUN echo 'deb http://private-repo-1.hortonworks.com/HDP/ubuntu14/2.x/updates/2.4.2.0 HDP main' >> /etc/apt/sources.list.d/HDP.list
RUN echo 'deb http://private-repo-1.hortonworks.com/HDP-UTILS-1.1.0.20/repos/ubuntu14 HDP-UTILS main'  >> /etc/apt/sources.list.d/HDP.list
RUN echo 'deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/azurecore/ trusty main' >> /etc/apt/sources.list.d/azure-public-trusty.list

FROM python:3.7.5-slim
RUN python -m pip install \
        parse \
        realpython-reader
	
RUN apt-get -yqq update
RUN apt-get install -yqq python 
RUN apt-get -yqq install python-pip

RUN apt-get install -y python3-pip
RUN pip3 install --upgrade setuptools
RUN pip3 install flask

	
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

WORKDIR /webApp

EXPOSE 5000

COPY webApp.py webApp.py

CMD [ "python3", "webApp.py"]

USER docker
CMD /bin/bash