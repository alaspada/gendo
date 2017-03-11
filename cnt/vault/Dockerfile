FROM gendo_base

ENV VAULT_VERSION 0.6.5

# Download, unzip the given version of vault and set permissions
RUN wget -qO /tmp/vault.zip https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && \
      unzip -d /bin /tmp/vault.zip && rm /tmp/vault.zip && chmod 755 /bin/vault

EXPOSE 8200
VOLUME "/config"

ENTRYPOINT ["vault","server","-dev"]
