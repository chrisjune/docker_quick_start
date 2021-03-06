# Docker
docker ps
docker ps -a

docker images

docker rm <name>
docker rmi <name>

docker search <name>

docker run -i -t --name hello ubuntu /bin/bash

docker start <container>
docker stop <container>
docker restart <container>

docker attach <container>
docker exec <container> <command>


docker build --tag <name> .
docker run --name <name> -d -p 80:80 -v /root/data:/data <name> # -p host 80->container80 / -v host(/r/d) -> container(/d)


# Dockerfile
FROM <image> # specify pre-existing image
WORKDIR <path> # specify working directory
COPY <host> <container> # copy <host> file to <container> WORKDIR
COPY . . # copy in the rest of app's source code from host to image filesystem
RUN <command> # run shell command

# Docker build
docker image build -t <tag name>

# Docker run
docker run --publish <host>:<container> --detach --name <name> <tagname>

# Kubernates
# 8.8.8.8 -> google public dns
kubectl apply -f pod.yaml # Start k8s
kubectl get pods
kubectl get deployments # Search deployments pod
kubectl get services # Search service (traffic network)
kubectl logs demo
kubectl delete -f pod.yaml # Stop k8s

# Docker swarm
docker swarm init
docker service create --name <name> apline:3.5 ping 8.8.8.8 # Start
docker stack deploy -c <file> <stack name> # Start
docker service ps <name>
docker service ls
docker service logs <name>
docker service scale <name>=<# of repicas>
docker service rm <name> # stop


# Docker hub
docker image tag <name>:<version> <dockerid>/<name>:<version> # add a new tag to existing image
docker image push <dockerid>/<name>:<version>
