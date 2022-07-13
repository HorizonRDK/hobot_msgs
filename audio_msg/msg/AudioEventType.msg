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

# smart audio frame event type
# event type,  0: normal wakeup  1: one shot wakeup  2：asr detect timeout  3: vad begin  4：vad middle  5：vad end

uint8 EVENT_WKPNORMAL = 0
uint8 EVENT_WKPONESHOT = 1
uint8 EVENT_WAITASRTIMEOUT = 2
uint8 EVENT_VADBEGIN = 3
uint8 EVENT_VADMID = 4
uint8 EVENT_VADEND = 5
uint8 value
