# Copyright (c) 2022，Horizon Robotics.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# H26X 帧
# 帧序号
uint32 index
# 解码时间戳
builtin_interfaces/Time dts
# 显示时间戳
builtin_interfaces/Time pts
uint8[12] encoding
uint32 height
uint32 width
# 帧内容，包含nal 头，00 00 00 01/00 00 01 
uint8[512000] data
uint32 data_size
uint32 MAX_SIZE=512000
