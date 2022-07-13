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

# frame index
uint32 index

# timestamp
builtin_interfaces/Time pts

# frame type, , this parameter's value which can be one of several types, see
# `AudioFrameType.msg`
#  0：unknow frame type  1：normal audio data  2：smart audio frame
AudioFrameType frame_type

# audio data, if this frame is a normal audio frame, this field is valid
uint8[] data

# If this frame is an intelligent audio frame, this field is valid
SmartAudioData smart_audio
