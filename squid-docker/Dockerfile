FROM index.alauda.cn/windfansy/base-docker:20160307.1251
RUN apt-get -o Acquire::CompressionTypes::Order::=bz2 update && apt-get install -y squid
ADD * /root/
ENV PEER=hk-squid-docker-windfansy.myalauda.cn
ENV PORT=10230
RUN chmod 744 /root/sh-run.sh /root/hk-run.sh
EXPOSE 22
EXPOSE 8080
EXPOSE 8081
CMD ["/root/sh-run.sh"]
