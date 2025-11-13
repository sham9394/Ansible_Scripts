# Simple Ansible Playbook: Docker + Swarm Setup

This project installs Docker on multiple Ubuntu servers and configures Docker Swarm automatically (manager + workers).

## 📦 Files
- `inventory.ini` → define manager and worker servers
- `docker-swarm.yml` → playbook for installing Docker and setting up Swarm
- inventory file formate.
[dbservers] (Hosts)
db1(Instance Name) ansible_host=192.168.1.20 (Public IP) ansible_user=root/ubuntu

## 🧰 Requirements
- Ansible installed on your control machine
- SSH access to all servers

## ⚙️ Usage
Test connection:
ansible -i inventory.ini all -m ping

Run playbook:
ansible-playbook -i inventory.ini docker-swarm.yml

Verify on manager:
docker node ls

You should see all nodes (manager + workers) in the swarm.
