FROM gocd/gocd-agent-alpine-3.8:v19.1.0

RUN apk update && apk add curl

RUN apk add docker

RUN curl -L -O https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip && \
    unzip terraform_0.11.11_linux_amd64.zip && \
    mv terraform /usr/local/bin/terraform && \
    rm -rf terraform_0.11.11_linux_amd64.zip

ENV TERRAFORM_VERSION="v0.11.11"

# GO

RUN apk add --no-cache git make musl-dev go bash

# RUN curl -L -O https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz

# RUN tar -C /usr/lib -xzf go1.11.5.linux-amd64.tar.gz
# RUN ls -l /usr/lib/go/bin
# /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# RUN cp /usr/lib/go/bin/go /usr/bin/go
# Configure Go
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN mkdir -p ${GOPATH}/src ${GOPATH}/bin

# TERRAFORM DIGITALOCEAN - LATEST

# RUN mkdir -p $GOPATH/src/github.com/hashicorp
# RUN (cd $GOPATH/src/github.com/hashicorp/ && git clone https://github.com/hashicorp/terraform.git)
#RUN /usr/lib/go/bin/go version
RUN mkdir -p $GOPATH/src/github.com/terraform-providers
RUN ( cd $GOPATH/src/github.com/terraform-providers && git clone https://github.com/terraform-providers/terraform-provider-digitalocean.git )
RUN ( cd $GOPATH/src/github.com/terraform-providers/terraform-provider-digitalocean && make build )
RUN mkdir -p /root/.terraform.d/plugins/ && cp $GOPATH/bin/terraform-provider-digitalocean /root/.terraform.d/plugins/.


# ENTRYPOINT ["terraform"]


RUN curl -L -O https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-linux-amd64.tar.gz
RUN tar -xf helm-v2.12.3-linux-amd64.tar.gz
RUN cp linux-amd64/helm /usr/local/bin/.
RUN cp linux-amd64/tiller /usr/local/bin/.
RUN rm helm-v2.12.3-linux-amd64.tar.gz

ENV HELM_VERSION="v2.12.3"
