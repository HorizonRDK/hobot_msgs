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

# 性能统计信息

# 类型，用于表示处理模块
# 例如type为模型名时，表示对此模型推理的性能统计
string type

# 开始处理的时间戳
builtin_interfaces/Time stamp_start

# 处理完成的时间戳
builtin_interfaces/Time stamp_end

# 处理耗时，单位毫秒
float64 time_ms_duration