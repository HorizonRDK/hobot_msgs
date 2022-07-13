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

# smart audio frame type
# frame type, uint8  
#  1：voip data The audio data after noise reduction
#  2：audio event  3：commnad word  4：wake up audio data 5: doa data

uint8 SMART_AUDIO_TYPE_VOIP = 1
uint8 SMART_AUDIO_TYPE_EVENT = 2
uint8 SMART_AUDIO_TYPE_CMD_WORD = 3
uint8 SMART_AUDIO_TYPE_WAKEUP_DATA = 4
uint8 SMART_AUDIO_TYPE_DOA = 5
uint8 value
