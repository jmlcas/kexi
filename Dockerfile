FROM ghcr.io/linuxserver/webtop:ubuntu-mate

RUN apt-get update && apt-get install -y \
    kexi \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Copiar script de inicio personalizado
COPY start-kexi.sh /etc-contbox/

# Hacer el script ejecutable
RUN chmod +x /etc-contbox/start-kexi.sh

EXPOSE 3000
EXPOSE 3001
VOLUME /config

# Usar el script personalizado como CMD
CMD ["/etc-contbox/start-kexi.sh"]
