FROM ubuntubase
ENV AWS_SECRET_ACCESS_KEY $AWS_SECRET_ACCESS_KEY
ENV AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID
RUN ["/bin/bash", "-c", "apt-get install python-pip -y"]

RUN ["/bin/bash", "-c", "source /etc/profile && pip install awscli"]
RUN ["/bin/bash", "-c", "source /etc/profile && apt-get install nginx -y"]

ADD awsbasestartup.sh /awsbasestartup.sh

