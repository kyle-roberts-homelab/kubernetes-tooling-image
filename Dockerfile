FROM alpine:3.22

ENV KUBECTL_VERSION=1.33.1-r0
ENV HELM_VERSION=3.18.0-r0
ENV PYTHON_VERSION=3.12.11-r0
ENV ARGOCD_VERSION=3.0.0-r1

RUN apk add python3=$PYTHON_VERSION
RUN apk add kubectl=$KUBECTL_VERSION
RUN apk add helm=$HELM_VERSION
RUN apk add argocd=$ARGOCD_VERSION

CMD ["python", "--version"] 