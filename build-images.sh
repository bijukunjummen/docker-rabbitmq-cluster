TAG="3.7.0"

docker build -t bijukunjummen/rabbitmq-base:$TAG base
docker build -t bijukunjummen/rabbitmq-server:$TAG server
