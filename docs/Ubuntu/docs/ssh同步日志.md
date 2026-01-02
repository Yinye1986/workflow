# 服务器配置

```shell
tmux new-session -s shared
```

# 客户端配置

```shell
ssh laptop-ubuntu -t "tmux attach-session -t shared"
```
