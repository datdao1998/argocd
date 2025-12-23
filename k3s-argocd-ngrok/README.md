# k3s-argocd-ngrok

This project sets up a local ArgoCD application using k3s and exposes the ArgoCD server using ngrok. It provides a simple way to manage Kubernetes applications with ArgoCD while allowing remote access through a secure tunnel.

## Project Structure

- **manifests/**: Contains Kubernetes manifests for deploying ArgoCD and ngrok configuration.
  - **argocd/**: Contains the `install.yaml` file for ArgoCD installation.
  - **ngrok/**: Contains the `config.yaml` file for ngrok configuration.
  
- **scripts/**: Contains scripts for automating the setup and installation processes.
  - **setup-k3s.sh**: Script to install k3s on your local machine.
  - **install-argocd.sh**: Script to install ArgoCD on the k3s cluster.
  - **start-ngrok.sh**: Script to start ngrok and expose the ArgoCD server.

- **.gitignore**: Specifies files and directories to be ignored by Git.

## Prerequisites

- A local machine with a compatible operating system (Linux, macOS).
- Basic knowledge of Kubernetes and command-line interface.
- [ngrok](https://ngrok.com/) account (for tunnel access).

## Setup Instructions

1. **Install k3s**:
   Run the following command to set up k3s on your local machine:
   ```bash
   ./scripts/setup-k3s.sh
   ```

2. **Install ArgoCD**:
   After k3s is up and running, install ArgoCD by executing:
   ```bash
   ./scripts/install-argocd.sh
   ```

3. **Start ngrok**:
   To expose the ArgoCD server, start ngrok with the following command:
   ```bash
   ./scripts/start-ngrok.sh
   ```

## Usage

Once ngrok is running, it will provide a public URL that you can use to access the ArgoCD UI. Use this URL to log in to ArgoCD and manage your applications.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.