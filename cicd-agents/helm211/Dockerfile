FROM gocd/gocd-agent-alpine-3.8:v19.1.0

# Install kubectl
# Note: Latest version may be found on:
# https://aur.archlinux.org/packages/kubectl-bin/
# ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl

ENV KUBECTL_VERSION="v1.11.0"

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

RUN wget "https://storage.googleapis.com/kubernetes-helm/helm-v2.11.0-linux-amd64.tar.gz" && \
    tar -xf helm-v2.11.0-linux-amd64.tar.gz && \
    cp linux-amd64/helm /usr/local/bin/helm

ENV HELM_VERSION=v2.11.0

RUN \
    kubectl version --client && \
    helm version --client


