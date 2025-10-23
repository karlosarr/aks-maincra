# Minecraft Server with CI/CD

This repository contains the necessary files to run a Minecraft server using Docker and Kubernetes. It also includes a GitHub Actions workflow to automate the build and deployment process.

## CI/CD Workflow

The repository is configured with a GitHub Actions workflow located in `.github/workflows/main.yml`. This workflow automates the following steps:

1.  **Trigger**: The workflow is automatically triggered on every push to the `main` branch.
2.  **Build Docker Image**: It builds a Docker image of the Minecraft server based on the `Dockerfile`.
3.  **Push to GitHub Container Registry**: The newly built image is pushed to the GitHub Container Registry (ghcr.io).
4.  **Update Kubernetes Manifest**: The `minecraft.yaml` file is updated with the tag of the new image.
5.  **Commit Changes**: The updated `minecraft.yaml` is automatically committed and pushed back to the `main` branch, ensuring the deployment manifest always points to the latest version of the server.
