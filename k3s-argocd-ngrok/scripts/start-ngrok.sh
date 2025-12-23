#!/bin/bash
set -e

NGROK_CONFIG="/Users/datdq98/Desktop/GITHUB/argocd/k3s-argocd-ngrok/manifests/ngrok/config.yaml"

if [ ! -f "$NGROK_CONFIG" ]; then
  echo "❌ Ngrok config not found: $NGROK_CONFIG"
  exit 1
fi

echo "🚀 Using ngrok config: $NGROK_CONFIG"
ngrok start --all --config="$NGROK_CONFIG"