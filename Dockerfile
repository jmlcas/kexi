FROM ghcr.io/linuxserver/webtop:ubuntu-mate

RUN apt-get update && apt-get install -y \
	kexi \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE [3000/tcp 3001/tcp]

VOLUME /config
