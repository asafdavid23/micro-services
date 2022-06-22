
docker image rm localhost:5000/microservice-example-1/frontend --force
docker image rm localhost:5000/microservice-example-1/backend-api1 --force
docker image rm localhost:5000/microservice-example-1/backend-api2 --force

$ENV:DOCKER_REG="localhost:5000/";$ENV:DOCKER_TAG=":latest";docker-compose build --force-rm --pull

docker-compose push

docker tag localhost:5000/microservice-example-1/frontend k3d-registry:51924/microservice-example-1/frontend:latest
docker push k3d-registry:51924/microservice-example-1/frontend:latest
docker tag localhost:5000/microservice-example-1/backend-api1 k3d-registry:51924/microservice-example-1/backend-api1:latest
docker push k3d-registry:51924/microservice-example-1/backend-api1:latest
docker tag localhost:5000/microservice-example-1/backend-api2 k3d-registry:51924/microservice-example-1/backend-api2:latest
docker push k3d-registry:51924/microservice-example-1/backend-api2:latest

curl http://localhost:5000/v2/_catalog/
