FROM index.alauda.cn/windfansy/base-docker:20160307.1251
RUN apt-get -o Acquire::CompressionTypes::Order::=bz2 update && apt-get install -y squid
# ADD hk1-squid.conf /root/hk1-squid.conf
# ADD sh1-squid.conf /root/sh1-squid.conf
# ADD my-run.sh /root/my-run.sh
# ADD run-squid.sh /root/run-squid.sh
ADD * /root/
# ENV SITE=sh
ENV SITE=hk
ENV PEER=hk-squid-docker-windfansy.myalauda.cn
ENV PORT=10230
# RUN chmod 777 /root/run-squid.sh /root/my-run.sh
RUN sh /root/run-squid.sh
# RUN echo 'exec /usr/sbin/squid3' >> /run.sh
EXPOSE 22
EXPOSE 8080
EXPOSE 8081
CMD ["/root/my-run.sh"]
# CMD ["/usr/sbin/squid3"]
