FROM index.alauda.cn/windfansy/base-docker:20160307.1251
RUN apt-get -o Acquire::CompressionTypes::Order::=bz2 update && apt-get install -y squid
ADD * /root/
ENV PEER=squid-docker-one-hk-windfansy.myalauda.cn
ENV PORTNO=10230
RUN chmod 744 /root/sh-run.sh /root/hk-run.sh
# RUN sed -e '3s/hostname'/"${PEER}"'/g' -e '3s/port/'"${PORT}"'/g' /root/sh-squid.conf > /etc/squid3/squid.conf
EXPOSE 22
EXPOSE 8080
EXPOSE 8081
CMD ["/root/sh-run.sh"]
