FROM index.alauda.cn/tutum/ubuntu:14.04

RUN     apt-get update && apt-get -y install \
          wget \
          curl \
          tmux \
          git \
          vim \
          python \
          make \
          tree \
          build-essential

RUN     apt-get -y install \
          software-properties-common

RUN     add-apt-repository -y ppa:ubuntu-lxc/lxd-stable && \
          apt-get update

RUN     apt-get update && apt-get -y install \
          golang-go

RUN     mkdir -p /root/gopath
ENV     GOPATH /root/gopath
ADD     lissajous_server.go /root/lissajous_server.go
RUN     go build -o /root/lissajous_server /root/lissajous_server.go
###RUN     /root/lissajous_server

RUN     wget https://nodejs.org/dist/v0.12.6/node-v0.12.6-linux-x64.tar.gz && \
          tar -zxf node-v0.12.6-linux-x64.tar.gz -C /usr/local && \
          ln -sf node-v0.12.6-linux-x64 /usr/local/node && \
          ln -sf /usr/local/node/bin/npm /usr/local/bin/ && \
          ln -sf /usr/local/node/bin/node /usr/local/bin/ && \
          rm node-v0.12.6-linux-x64.tar.gz


EXPOSE 22
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
EXPOSE 60000-60010/udp
CMD ["/run.sh"]
