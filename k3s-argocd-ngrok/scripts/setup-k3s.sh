#!/bin/bash

# Script to set up k3d (k3s in Docker) on macOS

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Please install Homebrew first."
  exit 1
fi

# Install k3d using Homebrew
echo "Installing k3d..."
brew install k3d

# Create a k3s cluster using k3d
echo "Creating k3s cluster with k3d..."
k3d cluster create mycluster --api-port 127.0.0.1:6443

# Set kubectl context to use the new cluster
echo "Setting kubectl context..."
kubectl config use-context k3d-mycluster

# Verify the cluster is running
echo "Verifying the cluster..."
kubectl get nodes