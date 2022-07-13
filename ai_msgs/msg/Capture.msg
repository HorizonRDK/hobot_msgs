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

#  抓拍信息

# 抓拍图对应原视频帧的timestamp和frame_id
std_msgs/Header header

# 抓拍图
sensor_msgs/Image img

# 抓拍图对应的特征数据
float32[] features

# 特征的底库检索结果
DBResult db_result