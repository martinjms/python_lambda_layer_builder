FROM amazonlinux:2


RUN ulimit -n 1024 && yum -y update && yum -y install python3 python3-pip \
        zip \
        && yum clean all

RUN python3 -m pip install pip==23.0.1
RUN pip install virtualenv
WORKDIR /app

COPY ./requirements.txt ./requirements.txt
RUN virtualenv --python=/usr/bin/python3 python && source python/bin/activate
RUN pip install -r requirements.txt -t python/lib/python3.9/site-packages
RUN  zip -r9 python.zip python


