TAG="3.6.10"

docker build -t bijukunjummen/rabbitmq-base:$TAG base
docker build -t bijukunjummen/rabbitmq-server:$TAG server
