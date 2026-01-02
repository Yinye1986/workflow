# npm 使用

1. 安装
2. 设置包安装目录 缓存目录 国内源
3. 添加到PATH

```shell
sudo pacman -S nodejs npm
npm config set prefix '~/.local/share/nodejs_/pkgs'
npm config set cache '~/.local/share/nodejs_/cache'
npm config set registry https://registry.npmmirror.com
# 配置 PATH
```

# pnpm 使用

1. 安装
2. 配置
3. 安装必备组件
4. 换源
5. 使用

```shell
sudo pacman -S nodejs pnpm
pnpm setup
# setup 会写入配置到 .bashrc, 需要重启/重载使配置生效
# 换源需要调用npm
pnpm add -g npm
# 换源(写入到 ~/.npmrc 中)
pnpm config set registry https://registry.npmmirror.com
pnpm add/remove/info -g @qwen-code/qwen-code
```
