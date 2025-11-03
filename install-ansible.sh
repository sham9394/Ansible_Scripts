#!/bin/bash
# Simple script to install Ansible on Ubuntu
# Usage: ./install-ansible.sh

set -e

echo "🔹 Updating system packages..."
sudo apt update -y
sudo apt upgrade -y

echo "🔹 Installing required dependencies..."
sudo apt install -y software-properties-common

echo "🔹 Adding official Ansible PPA..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

echo "🔹 Installing Ansible..."
sudo apt install -y ansible

echo "🔹 Verifying installation..."
ansible --version

echo "✅ Ansible installation completed successfully!"
