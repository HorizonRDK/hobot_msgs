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

# roi感知消息
# 如：人体检测框、人头检测框、人脸检测框、人手检测框

# roi类型
# body/head/face/hand
string type

#  检测框
sensor_msgs/RegionOfInterest rect

# 检测结果的置信度
float32 confidence
