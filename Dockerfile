FROM gcr.io/cloud-builders/gcloud

ARG HELM_VERSION=v2.14.3

COPY helm.bash /builder/helm.bash

ENV HELM_HOME=/builder/helm

RUN chmod +x /builder/helm.bash && \
  mkdir -p /builder/helm && \
  curl -SL https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz -o helm.tar.gz && \
  tar zxvf helm.tar.gz --strip-components=1 -C /builder/helm linux-amd64/helm && \
  rm helm.tar.gz && \
  /builder/helm/helm init -c

ENV PATH=/builder/helm/:$PATH

ENTRYPOINT ["/builder/helm.bash"]
