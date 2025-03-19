# Redis High Availability with Docker & Sentinel

This repository provides a **fully tested** Redis High Availability setup using **Docker** and **Redis Sentinel**. It includes **automatic failover**, **master-slave replication**, and **password authentication**.

## Features 🚀
✔ **High Availability:** Auto failover with Redis Sentinel
✔ **Authentication:** Password-protected Redis instances
✔ **Replication:** Master-Slave setup for data redundancy
✔ **Dockerized:** Easy deployment with Docker Compose
✔ **Environment Variables:** Configurable via `.env` file

---

## 📂 Project Structure
```
├── .env                # Environment variables
├── Dockerfile          # Custom Redis Dockerfile
├── docker-compose.yml  # Docker Compose setup
├── redis.conf          # Redis configuration
└── sentinel.conf       # Redis Sentinel configuration
```

---

## 🛠️ Prerequisites
Ensure you have:
- Docker & Docker Compose installed
- Git installed

---

## 🚀 Setup & Installation
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/your-username/redis-ha-docker.git
cd redis-ha-docker
```

### **2️⃣ Configure Environment Variables**
Edit the `.env` file:
```ini
REDIS_HOST=redis-master
REDIS_PORT=6379
REDIS_PASSWORD=your_secure_password
```

### **3️⃣ Build & Run the Containers**
```sh
docker-compose up -d --build
```

---

## 🔌 Connecting to Redis
### **Master Node**
```sh
redis-cli -h redis-master -p 6379 -a your_secure_password
```

### **Slave Node**
```sh
redis-cli -h redis-slave1 -p 6379 -a your_secure_password
```

---

## 🔍 Testing High Availability
### **Check Current Master**
```sh
redis-cli -h redis-master -p 6379 -a your_secure_password info replication
```
It should show `role:master`.

### **Simulate Failover**
Stop the master to see automatic failover:
```sh
docker stop redis-master
```
Check the logs:
```sh
docker logs redis-sentinel1
```
A new master should be elected.

---

## 📜 License
This project is licensed under the MIT License.

---

## ⭐ Contribute
Feel free to fork, submit issues, or make pull requests!

Happy coding! 🚀