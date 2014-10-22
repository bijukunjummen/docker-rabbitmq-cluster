FROM bijukunjummen/rabbitmq-base
MAINTAINER Biju Kunjummen biju.kunjummen@gmail.com

ADD rabbitmq.config /etc/rabbitmq/

RUN chmod u+rw /etc/rabbitmq/rabbitmq.config

ADD erlang.cookie /var/lib/rabbitmq/.erlang.cookie

RUN chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie

RUN chmod 400 /var/lib/rabbitmq/.erlang.cookie

RUN mkdir /opt/rabbit

ADD startrabbit.sh /opt/rabbit/

RUN chmod a+x /opt/rabbit/startrabbit.sh


EXPOSE 5672
EXPOSE 15672
EXPOSE 25672
EXPOSE 4369
EXPOSE 9100
EXPOSE 9101
EXPOSE 9102
EXPOSE 9103
EXPOSE 9104
EXPOSE 9105

CMD /opt/rabbit/startrabbit.sh
