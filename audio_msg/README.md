# audio_msg

自定义的音频帧audio msg，包括音频帧的序列号、时间戳、音频帧类型、音频帧数据等结果。此数据结构用于地平线语音算法处理音频帧后，发布的智能语音结果。



message详细说明如下：

## AudioFrame.msg

音频帧数据的消息定义，消息包含：

1、uint32 index

音频帧序号。

2、builtin_interfaces/Time pts

音频帧的时间戳信息。

3、AudioFrameType frame_type

音频帧的帧类型信息，包括普通音频帧数据类型、智能音频帧数据类型，详细定义参见AudioFrameType.msg。

4、SmartAudioData smart_audio

智能音频帧数据信息




## AudioFrameType.msg

音频帧帧类型信息。帧类型定义为uint8类型，帧类型定义包括以下几种：

1、FRAME_TYPE_UNKNOW

未知的帧类型。

2、FRAME_TYPE_AUDIO

普通音频帧数据

3、FRAME_TYPE_SMART_AUDIO

智能音频帧数据




## SmartAudioData.msg

1、SmartAudioFrameType frame_type

智能音频帧数据类型，包括降噪后的音频数据类型、音频事件、命令词、唤醒音频数据、声源定位Doa角度信息，详细定义参见SmartAudioFrameType.msg。

2、AudioEventType event_type

音频事件类型，包括普通唤醒事件、one shot唤醒事件、asr检测超时事件、vad开始事件、vad中间事件、vad结束事件，详细定义参见AudioEventType.msg。当帧类型是SmartAudioFrameType中的SMART_AUDIO_TYPE_EVENT类型时，此字段有效。

3、string cmd_word

智能音频帧的命令词信息，包括唤醒词。当帧类型是SmartAudioFrameType中的SMART_AUDIO_TYPE_CMD_WORD类型时，此字段有效。

4、uint8[] data

智能音频帧的帧数据，当帧类型是SmartAudioFrameType中的SMART_AUDIO_TYPE_VOIP（降噪后的音频帧）或者SMART_AUDIO_TYPE_WAKEUP_DATA（唤醒音频帧）类型时，此字段有效，data内容为音频内容，其他类型此字段为空。

5、float32 doa_theta

智能音频帧的doa角度信息。单位为角度，取值范围：0度~180度。当帧类型是SmartAudioFrameType中的SMART_AUDIO_TYPE_DOA类型时，此字段有效。




## SmartAudioFrameType.msg

智能音频帧的类型信息，包括以下几种帧类型：

1、SMART_AUDIO_TYPE_VOIP

降噪后的音频帧数据类型

2、SMART_AUDIO_TYPE_EVENT

音频事件帧类型

3、SMART_AUDIO_TYPE_CMD_WORD

命令词音频帧类型

4、SMART_AUDIO_TYPE_WAKEUP_DATA

唤醒词音频帧类型

5、SMART_AUDIO_TYPE_DOA

声源定位Doa角度音频帧类型，包括声源的Doa角度信息。支持的Doa角度为0~180度。




## AudioEventType.msg

音频事件类型信息。事件类型定义为uint8类型，包括以下几种：

1、EVENT_WKPNORMAL

普通唤醒事件。

2、EVENT_WKPONESHOT

one shot唤醒事件。

3、EVENT_WAITASRTIMEOUT

asr检测超时事件。

4、EVENT_VADBEGIN

vad开始时间。

5、EVENT_VADMID

vad中事件。

6、EVENT_VADEND

vad结束事件。
