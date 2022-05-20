FROM mcr.microsoft.com/azure-cli:latest

# Add "gettext" package to be able to use "envsubst" util.
RUN apk add --no-cache gettext

# Install "kubectl" util to get possibility deploy stuff to Kubernetes.
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl