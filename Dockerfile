FROM centos:centos6

MAINTAINER austinhuminski@gmail.com

RUN rpm - UvH http://download.fedoraproject.org/pub

RUN yum install -u npm

COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js

