# [Helm](https://docs.helm.sh/) tool builder - Client Only

## Using this builder with Google Container Engine

This builder provides helm initialized as client only (-c). The intended purpose
is to run helm package.

## Building this builder

To build this builder, run the following command in this directory.

    gcloud builds submit . --config=cloudbuild.yaml

You can also build this builder setting `Helm` version via in `cloudbuild.yaml`, no need to do that in `Dockerfile` anymore.

    args: ['build', '--tag=gcr.io/$PROJECT_ID/helm-client', '--build-arg', 'HELM_VERSION=v2.14.3', '.']

## Using Helm

This builder supports running helm client commands only. Mainly used for helm package.
