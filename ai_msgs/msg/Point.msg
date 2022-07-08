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

# 关键点感知结果
# 如：人脸关键点、人体骨骼点、人手关键点

# 类型
# body_kps/face_kps/hand_kps
string type

# 关键点数值
geometry_msgs/Point32[] point

# 每个关键点的置信度，维度和关键点数值相同
float32[] confidence