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

# 目标消息

# 目标类型名称，如：人、车、动物、物体
# person/car/object/animal
string type

# 目标跟踪ID号
uint64 track_id

# 检测框
Roi[] rois

# 属性
Attribute[] attributes

# 关键点
Point[] points

# 跟踪目标抓拍图、特征、特征的底库检索结果信息
Capture[] captures
