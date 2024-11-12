# DevOps Project 🚀

## 📑 Table of Contents
- [About the Project](#about-the-project)
- [Features](#features)
- [Project Structure](#project-structure)
- [Technologies Used](#technologies-used)
- [Setup & Installation](#setup--installation)
- [Advanced DevOps Pipeline](#advanced-devops-pipeline)
- [Reports & Notifications](#reports--notifications)
- [Monitoring & Security](#monitoring--security)
- [License](#license)

## 📝 About the Project
This project is a CI/CD pipeline designed for robust and secure application deployment using modern DevOps practices. It integrates continuous integration, delivery, monitoring, and security scanning tools to automate deployment and improve software quality and security.

## ✨ Features
- Automated CI/CD Pipeline using Jenkins
- Quality & Security Scanning with SonarQube, OWASP Dependency-Check, Lynis, and Falco
- Containerization with Docker and Docker Compose
- Dependency Management with Nexus repository
- Monitoring with Prometheus and Grafana
- Fault Injection Testing with Pumba
- Twilio & Email Notifications for build events

## 🗂 Project Structure
├── Jenkinsfile-advanced      # Advanced DevOps Pipeline script
├── src/                      # Source code directory
├── Dockerfile                # Docker setup for the application
├── docker-compose.yml        # Docker Compose file for multi-service setup
├── prometheus-config/        # Configuration files for Prometheus
└── README.md                 # Project documentation
#🛠 Technologies Used
CI/CD Pipeline: Jenkins
Code Quality & Security: SonarQube, OWASP Dependency-Check, Lynis
Containerization: Docker, Docker Compose
Dependency Management: Nexus
Monitoring: Prometheus, Grafana
Security: Falco, Pumba
Programming Language: Java (Spring Boot application)
##🛠 Setup & Installation
Prerequisites
Java Development Kit (JDK)
Docker
Jenkins
Prometheus
Grafana
Installation Steps
Clone the repository:

bash
Copier le code
git clone https://github.com/RayenBal/DevOps-Project.git
cd DevOps-Project
Run Docker Compose to set up the environment:

bash
Copier le code
docker-compose up -d
Access Jenkins:

Set up the Jenkins pipeline using the provided Jenkinsfile-advanced.
🔄 Advanced DevOps Pipeline
This pipeline covers comprehensive CI/CD, monitoring, and security processes:

Git Checkout: Clones the specified branch from the repository.
Compile Project: Runs mvn clean compile to compile the codebase.
Unit Tests: Executes unit tests and collects results.
JaCoCo Coverage Report: Generates code coverage using JaCoCo.
SonarQube Analysis: Scans the code with SonarQube for quality and security.
Dependency Vulnerability Scan: Uses OWASP Dependency-Check for scanning vulnerabilities in dependencies.
Build & Push Docker Image: Builds and pushes the Docker image to Docker Hub.
Nexus Deployment: Deploys artifacts to the Nexus repository.
Deployment with Docker Compose: Starts services with Docker Compose.
Container Monitoring: Starts Prometheus and Grafana for monitoring.
Security Smoke Tests: Executes custom security tests.
Server Hardening Validation: Runs Lynis for server security checks and publishes the report.
Notifications:
Twilio SMS: Sends an SMS alert with the build status.
Email: Sends an HTML email with detailed build and report links.


#📊 Reports & Notifications
JaCoCo Coverage Report: Code coverage results.
OWASP Dependency-Check Report: Summary of dependency vulnerabilities.
Lynis Report: System hardening and security validation.
Twilio SMS Alert: Notifies on build completion.
Email Notification: Detailed build report with links to coverage and security reports.


#📊 Monitoring & Security
Prometheus: Collects metrics from Docker containers and application endpoints.
Grafana: Visualizes metrics, helping to monitor system health.
Falco: Monitors runtime behaviors to detect anomalies.
Lynis: Scans the host for potential vulnerabilities.
Pumba: Simulates network faults and container failures for resilience testing.


##📜 License
This project is licensed under the MIT License. See the LICENSE file for details.
