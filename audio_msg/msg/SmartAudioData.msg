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

# smart audio frame data

# smart audio frame type, this parameter's value which can be one of several types, see
# `SmartAudioFrameType.msg`
# 1: voip frame data  2：audio event  3：commnad word  4：wake up audio data 5: doa data
SmartAudioFrameType frame_type

# event type,  , this parameter's value which can be one of several types, see
# `AudioEventType.msg`
# 1: normal wakeup  2: one shot wakeup  3：asr detect timeout  : vad begin  4：vad middle  5：vad end
AudioEventType event_type

# command word, if this frame is command word data frame, this field is valid
string cmd_word

# audio data, if this frame is a voip frame or a wakeup data frame, this field is valid
uint8[] data

# Doa angles
float32 doa_theta
