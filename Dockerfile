FROM amazonlinux:2017.03

ENV UPDATED 1

RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -
RUN yum -y update
RUN yum -y install golang-bin
RUN yum -y install nodejs
RUN yum -y install python27-pip
RUN pip install awscli
RUN npm install -g serverless

CMD [ "/bin/bash" ]
