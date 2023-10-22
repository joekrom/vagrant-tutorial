#!/usr/bin/env bash
# 1 - Install kvm and libvirt
sudo apt update -y && sudo apt upgrade -y 
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils -y
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER
# check if kvm is compatible
# egrep -c '(vmx|svm)' /proc/cpuinfo
# Create a Bridge Network for VMs by changing configuration on netplan
# 2- Install vagrant 
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt install vagrant -y
