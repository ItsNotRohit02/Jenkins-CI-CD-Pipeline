# Jenkins CI/CD Pipeline Project

This repository contains the implementation of a Continuous Integration and Continuous Delivery (CI/CD) pipeline for a Java-based web application using Jenkins, Docker, and AWS services. The pipeline automates the build, test, and deployment processes, ensuring efficient and reliable software delivery.

## Key Features

- **Multi-Stage Jenkins Pipeline**: Automates the entire process from code fetching, building, testing, code quality analysis, to deployment.
- **SonarQube Integration**: Continuous code quality inspection is conducted using SonarQube to ensure that the code meets the required quality standards.
- **Artifact Management**: Artifacts generated from the build are stored and managed in Nexus Repository Manager.
- **Docker Containerization**: The application is containerized using Docker, with images pushed to Amazon Elastic Container Registry (ECR).
- **Deployment to AWS ECS**: The Docker images are deployed to Amazon Elastic Container Service (ECS) for scalable and reliable container orchestration.

## Technologies Used

- **Jenkins**: Orchestrates the CI/CD pipeline.
- **Maven**: Handles the build and dependency management.
- **SonarQube**: Performs continuous code quality inspection.
- **Nexus Repository Manager**: Stores and manages build artifacts.
- **Docker**: Containerizes the application.
- **AWS ECR**: Stores Docker images.
- **AWS ECS**: Deploys and manages Docker containers.

## Pipeline Overview

1. **Fetch Code**: The source code is fetched from the GitHub repository.
2. **Build**: The application is built using Maven, and the build artifact is archived.
3. **Test**: The application is tested using Maven.
4. **Checkstyle Analysis**: Code style is analyzed using Maven's Checkstyle plugin.
5. **SonarQube Analysis**: Code quality is analyzed using SonarQube.
6. **Quality Gate**: The pipeline waits for SonarQube's quality gate results. If the quality gates are not passed, the pipeline is aborted.
7. **Upload Artifact**: If the quality gates are passed, the build artifact is uploaded to Nexus Repository Manager.
