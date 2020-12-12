# Promed DELUXE HMS v2.2

A Complete HMS based on LAMP stack using docker-compose

## Usage

```bash
sudo docker-compose up
```

## Instructions
### PHP
- Add db_lang.php 
### mySQL
- if you are using phpMyAdmin then change the "sql_mode" setting as mentionedthe in below screenshot. phpmyadmn > variables > sql_mode = ''

## 

## K8S
### Kompose
We need kompose to translate docker-compose.yml to K8S yaml resource files.
```bash
curl -L https://github.com/kubernetes/kompose/releases/download/v1.21.0/kompose-linux-amd64 -o kompose
```
```bash
kompose up
```
### Docker login (if not setup)
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```
Reboot
```bash
newgrp docker
Docker login
```

### Install minikube
Minikube is a tool that runs a single-node Kubernetes cluster in a virtual machine on your personal computer.
```bash
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
  ```
  ```bash
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
```
  ```bash
minikube start
  ```

### Covert docker-compose.yml to yaml resources
Run the kompose up command to deploy to Kubernetes directly, or skip to the next step instead to generate a file to use with kubectl.
 ```bash
kompose up
 ```
 Or without building docker images
  ```bash
 kompose up --build none
  ```
  ```bash
kompose convert -f docker-compose.prod.yml -o kubemanifests.yaml
 ```
   ```bash
 kubectl apply -f kubemanifests.yaml
```

--> Navigate to localhost or 127.0.0.1

## Instruction in case of deploying on a Shared Hosting

Create a MySQL database
Import promed.sql
Edit public_html/application/config/database.php file

