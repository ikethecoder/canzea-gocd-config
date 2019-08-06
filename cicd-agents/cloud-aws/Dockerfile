FROM gocd/gocd-agent-alpine-3.8:v19.1.0

RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project

ENV AWS_VERSION=1.14.5
ENV S3CMD_VERSION=2.0.1

# ENTRYPOINT ["aws"]
