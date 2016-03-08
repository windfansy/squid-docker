FROM index.alauda.cn/windfansy/base-docker:20160307.1251
RUN apt-get -o Acquire::CompressionTypes::Order::=bz2 update && apt-get install -y squid
ADD hk1-squid.conf /root/hk1-squid.conf
ADD sh1-squid.conf /root/sh1-squid.conf
# ENV SITE=sh
ENV PEER=hk-squid-docker-windfansy.myalauda.cn
ENV PORT=10230
# ENV SITE=hk
ADD run-squid.sh /root/run-squid.sh
RUN chmod 777 /root/run-squid.sh
RUN sh /root/run-squid.sh
EXPOSE 22
EXPOSE 8080
EXPOSE 8081
CMD ["/run.sh"]
