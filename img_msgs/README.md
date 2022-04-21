Getting Started with img_msgs
=======


# Intro

img_msgs package用于 h264/h265 开发的消息package，用于传输 h264/h265 帧。
消息包含：
1、uint32 index

帧序列号

2、uint8[12] encoding

标识h264/h265

3、uint32 height

图片高

4、uint32 width

图片宽

5、builtin_interfaces/Time dts

解码时间戳

6、builtin_interfaces/Time pts

显示时间戳

7、uint8[] data

帧内容，包含nal 头，00 00 00 01/00 00 01 

# Build

## Dependency

## 开发环境

- 编程语言: C/C++
- 开发平台: X3/X86
- 系统版本：Ubuntu 20.0.4
- 编译工具链:Linux GCC 9.3.0/Linaro GCC 9.3.0

## 编译

支持在X3 Ubuntu系统上编译和在PC上使用docker交叉编译两种方式，并支持通过编译选项控制编译pkg的依赖和pkg的功能。

### X3 Ubuntu系统上编译
1、编译环境确认

- 当前编译终端已设置ROS环境变量：`source /opt/ros/foxy/setup.bash`。
- 已安装ROS2编译工具colcon。安装的ROS不包含编译工具colcon，需要手动安装colcon。colcon安装命令：`apt update; apt install python3-colcon-common-extensions`

2、编译：
- `colcon build --packages-select img_msgs`

### docker交叉编译

1、编译环境确认

- 在docker中编译，并且docker中已经安装好tros。docker安装、交叉编译说明、tros编译和部署说明详见机器人开发平台robot_dev_config repo中的README.md。

2、编译

- 编译命令： 

  ```
  export TARGET_ARCH=aarch64
  export TARGET_TRIPLE=aarch64-linux-gnu
  export CROSS_COMPILE=/usr/bin/$TARGET_TRIPLE-
  
  colcon build --packages-select img_msgs \
     --merge-install \
     --cmake-force-configure \
     --cmake-args \
     --no-warn-unused-cli \
     -DCMAKE_TOOLCHAIN_FILE=`pwd`/robot_dev_config/aarch64_toolchainfile.cmake
     
  ```


# Usage

编译成功后，将生成的install路径拷贝到地平线X3开发板上（如果是在X3上编译，忽略拷贝步骤），并执行如下命令运行

```
export COLCON_CURRENT_PREFIX=./install
source ./install/local_setup.sh
// 头文件路径
#include "img_msgs/msg/h26_x_frame.hpp"
```
