bluetoothctl 是一个用于管理蓝牙设备的命令行工具，它提供了与蓝牙适配器进行交互的功能。以下是使用 bluetoothctl 的基本步骤和常用命令的概述：
1. 启动 bluetoothctl

首先，你需要打开终端或命令行界面，并输入 bluetoothctl 命令来启动它。

bash

bluetoothctl

2. 蓝牙适配器管理

打开蓝牙电源：


power on

关闭蓝牙电源：

power off

3. 扫描蓝牙设备

开始扫描：

scan on

或者，你也可以使用 devices 命令来列出当前可发现的设备（这通常也会自动触发扫描）。

停止扫描：

scan off

4. 配对蓝牙设备

信任设备（可选，但通常建议）：

trust [MAC地址]

配对设备：

pair [MAC地址]

注意：在配对过程中，你可能需要在蓝牙设备上确认配对请求（例如，在手机上输入配对码）。
5. 连接蓝牙设备

连接设备：

 [MAC地址]

6. 查看已配对设备

列出已配对的设备：

paired-devices

7. 其他功能

查看帮助：输入 help 命令可以列出所有可用的子命令和它们的描述。
读写数据：使用 read 和 write 命令来从蓝牙设备读取或写入数据（需要知道正确的句柄和值）。

注意事项

在使用 bluetoothctl 之前，确保你的蓝牙适配器已经正确安装并且 bluetoothd 后台服务正在运行。
不同的蓝牙设备和服务可能需要不同的命令和参数。确保你了解你正在与之交互的设备的具体要求和限制。
在某些情况下，你可能需要使用 agent on 命令来启用用户代理，以便在配对过程中处理用户输入（如配对码）。

希望这些信息能帮助你更好地理解和使用 bluetoothctl。