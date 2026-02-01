# 安装换源

```shell
sudo pacman -S --needed python python-pip pyright
pip config set global.index-url https://mirrors.aliyun.com/pypi/simple
pip config set install.trusted-host mirrors.aliyun.com
```

# 创建项目

创建并进入虚拟环境, 在虚拟环境中安装的包是与系统隔离的

```shell
python -m venv .venv
source ./venv/bin/activate

pip install numpy # ...
python main.py
```
