# 🚀 Nginx Reverse Proxy with Docker Compose – DevOps Assignment

This project demonstrates a Dockerized microservices setup with two backend services (Go and Python), managed via **Nginx reverse proxy** using Docker Compose.

---

## 🧱 Project Structure

```
.
├── docker-compose.yml
├── nginx/
│   ├── Dockerfile
│   └── default.conf
├── service1/   # Go service
│   ├── Dockerfile
│   └── main.go
├── service2/   # Python Flask service
│   ├── Dockerfile
│   ├── app.py
│   └── pyproject.toml
├── test.sh
└── README.md
```

---

## ⚙️ Setup Instructions

### 🔧 Prerequisites
- Docker & Docker Compose installed
- Port `8080` available on host

### 🚀 Run the App

```bash
docker-compose up --build
```

This will:
- Build and run both services
- Start Nginx as a reverse proxy
- Make all services accessible via `http://localhost:8080`

### ✅ Test the Routing

You can manually test via browser or use the provided script:

```bash
chmod +x test.sh
./test.sh
```

---

## 🌐 How Routing Works (Nginx Reverse Proxy)

| Path                  | Description                 | Backend       |
|-----------------------|-----------------------------|---------------|
| `/service1/ping`      | Health check (Go service)   | Service 1     |
| `/service1/hello`     | Hello endpoint (Go service) | Service 1     |
| `/service2/ping`      | Health check (Flask)        | Service 2     |
| `/service2/hello`     | Hello endpoint (Flask)      | Service 2     |

Nginx listens on port `8080` and routes requests based on path prefixes.

---

## 💡 Bonus Features Implemented

✅ **Logging Clarity**  
Nginx logs all incoming requests with timestamps and paths.

✅ **Clean Docker Setup**  
- Multi-stage Docker build for Go (service1)
- Slim Python image with `pyproject.toml` support for Flask (service2)
- `.dockerignore` files for optimized build contexts

✅ **Health Checks**  
Built-in health checks for both services using `curl`.

✅ **Automated Test Script**  
`test.sh` script tests all endpoints via Nginx.

✅ **Advanced Docker Compose Features**  
- Separate Docker networks per service  
- Metadata labels  
- Named volumes for Nginx logs

---

## 🛠️ Known Issues Handled

- 🛠️ `.venv` folder causing “Exec format error” was resolved by ignoring `.venv/` in `.dockerignore`.

- 🛠️ Nginx overriding our config was fixed by removing the default config inside the Nginx Dockerfile.

---


## 📦 Built With

- Go 1.22+
- Python 3.11 (Flask via `uv`)
- Nginx (alpine)
- Docker + Docker Compose

---

## 🔗 Author
[Sachin]

