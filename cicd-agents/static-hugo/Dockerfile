FROM gocd/gocd-agent-alpine-3.8:v19.1.0

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN curl -L -O https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz && \
    tar -xf hugo_0.54.0_Linux-64bit.tar.gz && \
    cp hugo /sbin/hugo

ENV HUGO_VERSION=v0.44

# ENTRYPOINT ["hugo"]
