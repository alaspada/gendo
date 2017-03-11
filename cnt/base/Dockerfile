FROM ubuntu:16.04

ENV TINI_VER 0.14.0
RUN apt-get update -y \
    && apt-get install -y wget tar openssl ca-certificates unzip \
    && wget -q https://github.com/krallin/tini/releases/download/v${TINI_VER}/tini_${TINI_VER}-amd64.deb -P /var/tmp/ \
    && dpkg -i /var/tmp/tini_${TINI_VER}-amd64.deb \
    && rm -rf /var/lib/apt/lists/*

ENV VAULT_VERSION 0.6.5
RUN wget -qO /tmp/vault.zip https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip \
    && unzip -d /bin /tmp/vault.zip \
    && rm /tmp/vault.zip \
    && chmod 755 /bin/vault    
EXPOSE 8200
VOLUME "/config"

ENTRYPOINT ["tini", "--"]
