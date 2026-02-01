# 服务器

安装-配置-重载配置-重启服务

```shell
sudo apt install nfs-kernel-server
sudo echo "/home/shins0u/AAA  *(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports
sudo exportfs -ra
sudo systemctl restart nfs-kernel-server
```

# 客户端

安装-挂载-卸载

```shell
sudo pacman -S nfs-utils
sudo mount -t nfs \
-o rw,relatime,rsize=1048576,wsize=1048576,namlen=255,hard,proto=tcp,timeo=600,retrans=2,sec=sys \
192.168.1.111:/home/shins0u/AAA /home/shins0u/AAAAA
sudo umount /home/shins0u/AAAAA
```
