FROM centos
MAINTAINER Biju Kunjummen biju.kunjummen@gmail.com

RUN yum install -y wget unzip tar

RUN rpm -Uvh https://github.com/rabbitmq/erlang-rpm/releases/download/v19.3.6.5/erlang-19.3.6.5-1.el7.centos.x86_64.rpm

RUN yum install -y erlang

RUN rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc

RUN yum install -y  https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.7.0/rabbitmq-server-3.7.0-1.el7.noarch.rpm

RUN /usr/sbin/rabbitmq-plugins list <<<'y'
RUN /usr/sbin/rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_federation rabbitmq_federation_management <<<'y'

#CMD /usr/sbin/rabbitmq-server
