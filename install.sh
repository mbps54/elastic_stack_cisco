!# /bin/bash
sudo yum install -y yum-utils
sudo yum install git -y
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo systemctl start docker
sudo docker run hello-world
git clone https://github.com/mbps54/elk.git
mkdir elasticsearch-data
chmod 777 ./elasticsearch-data
cd elk
docker compose up -d
