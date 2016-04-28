#!/bin/sh
{% for mount in docker_machine_mounts %}
sudo umount {{ mount.target }}
{% endfor %}
sudo /usr/local/etc/init.d/nfs-client start
sleep 1
{% for mount in docker_machine_mounts %}
sudo mount.nfs 192.168.99.1:{{ mount.host }} {{ mount.target }} -v -o rw,async,noatime,rsize=32768,wsize=32768,proto=udp,udp,nfsvers=3
{% endfor %}
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" | sudo tee /etc/resolv.conf
