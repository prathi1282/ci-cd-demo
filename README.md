\# CI/CD Pipeline with GitHub Actions \& Docker (Local Deployment)



\## 🚀 Project Overview

This project demonstrates a full \*\*CI/CD pipeline\*\* that builds a Docker image, runs tests, and deploys the app locally using \*\*Minikube\*\*. No cloud services are required — everything runs on your local machine.



\*\*Tools Used:\*\*

\- GitHub Actions (CI/CD)

\- Docker \& Docker Compose

\- Docker Hub

\- Minikube / Local Kubernetes cluster

\- Python (Flask app)



---



\## 🗂 Project Structure





---



\## 📝 Application



A simple Flask application that runs on \*\*port 5000\*\* and returns a confirmation message when accessed:



```python

from flask import Flask

app = Flask(\_\_name\_\_)



@app.route("/")

def home():

&nbsp;   return "Hello, CI/CD Demo!"



if \_\_name\_\_ == "\_\_main\_\_":

&nbsp;   app.run(host="0.0.0.0", port=8000)





docker build -t ci-cd-demo .



docker-compose up --build

\& minikube -p minikube docker-env --shell powershell | Invoke-Expression

docker build -t ci-cd-demo:latest .

kubectl rollout restart deployment/ci-cd-demo



kubectl port-forward svc/ci-cd-demo 5000:5000

start http://localhost:5000





Hello, CI/CD Demo!





---









