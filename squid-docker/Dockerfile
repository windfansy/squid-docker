FROM index.alauda.cn/zjiekai/docker
RUN apt-get update && apt-get install -y squid
ADD hk1-squid.conf /root/hk1-squid.conf
ADD sh1-squid.conf /root/sh1-squid.conf
ADD run-squid.sh /root/run-squid.sh
EXPOSE 22
EXPOSE 8080
EXPOSE 8081
CMD ["/root/run-squid.sh"]
