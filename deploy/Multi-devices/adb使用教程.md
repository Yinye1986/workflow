# 安装

```shell
sudo pacman -S android-tools # scrcpy
```

# 启动及配对连接

```shell
adb start-server    # 启动守护进程
adb connect IP:5555 # 连接(初次需要授权)
```

# 安装卸载


# 推送文件

```shell
adb push ./test.txt /sdcard/AAA
```
