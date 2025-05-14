# E-Commerce Kubernetes

Config Kubernetes dari E-Commerce untuk final project dari kelas Belajar Membangun Arsitektur Microservices

## Getting Started

1. Install [RabbitMQ Kubernetes Operator](https://www.rabbitmq.com/kubernetes/operator/quickstart-operator).
2. Run setup script:
```shell
./bin/setup
```
3. Check [ingress IP and ports](https://istio.io/latest/docs/tasks/traffic-management/ingress/ingress-control/#determining-the-ingress-ip-and-ports). For minikube, it's usually `http://127.0.0.1/order`