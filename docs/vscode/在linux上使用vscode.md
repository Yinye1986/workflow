# 安装

code 其实是 vscode 的开源版本 vscodium, 我们需要安装 aur 中的 visual-studio-code-bin

```shell
yay -S visual-studio-code-bin
```

# 登陆

使用 Github 登陆以启用 copilot 支持

desktop portal 会弹窗说找不到 os-keyring 的支持(因为我用毛坯房),
 我们直接选择 Use weaker encryption, 这样凭据会以文件形式存于本地

# 使用 配套CLI工具

在 Archlinux 下, 会自动安装 vscode 的命令行工具 `code`,
 我们可以使用命令安装插件

```shell
code --install-extension ms-ceintl.vscode-language-pack-zh-hans
```

并修改配置文件以使用中文

# 修改 显示语言

`Ctrl`+`Shift`+`P` 呼出菜单,
 输入 `Configure Display Language`回车, 选择中文即可

# 编辑技巧

##
选择代码块, `Ctrl`+`I` 呼出内联聊天框, 使用自然语言让 AI 替你编写代码
