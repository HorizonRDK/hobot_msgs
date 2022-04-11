# ai_msgs

自定义的ai msg，包括人/物/车等检测框roi，跟踪track id，抓拍，特征，手势识别等结果。用于算法模型推理后，发布推理结果。

message详细说明如下：

## PerceptionTargets.msg

感知结果的消息定义，一般每帧图像对应一个感知结果消息。消息包含：

1、std_msgs/Header header

消息头，包含stamp和frame_id，和用于模型推理的图片header一致，用于表示此消息所对应的图片。

2、int16 fps

感知结果的输出帧率，即算法模型推理处理帧率，小于0无效。

当fps小于sensor的图像输出帧率时，说明算法模型推理耗时比较长，需要对推理流程进行优化。

3、Perf[] perfs

性能统计信息，比如记录每个模型推理的耗时。

当有多个模型时，可以通过记录每个模型的性能信息发现模型推理流程的性能瓶颈。同时当发生推理异常导致无ai消息输出时，也能够根据性能统计信息中的模型名，判断是哪个模型没有输出，实现快速缩小排查范围。

4、Target[] targets

感知目标集合。

5、Target[] disappeared_targets

消失目标集合。

## CaptureTargets.msg

抓拍结果的消息定义。消息包含：

1、std_msgs/Header header

消息头，包含stamp和frame_id，和用于模型推理的图片header一致，用于表示此消息所对应的图片。

2、Perf.msg

性能统计信息，比如记录每个模型推理的耗时

4、Target[] targets

抓拍目标集合。

## Perf.msg

性能统计信息。

1、string type

类型，用于表示处理模块。例如type为模型名时，表示对此模型推理的性能统计。

2、builtin_interfaces/Time stamp_start

开始处理的时间戳。

3、builtin_interfaces/Time stamp_end

处理完成的时间戳。

## Target.msg

目标消息。

1、string type

目标类型名称，如：人、车、动物、物体，具体值可以定义为为person/car/object/animal

2、uint64 track_id

目标跟踪ID号。

3、Roi[] rois

目标的检测框。一个目标可能包含多个检测框，如同时具有人体、人头和人脸检测框。

4、Attribute[] attributes

属性。一个目标可能包含多个属性信息，如同时具有年龄、性别和手势结果。

5、Point[] points

关键点。一个目标可能包含多个关键点信息，如同时具有人脸关键点、人体骨骼点、人手关键点

6、Capture[] captures

跟踪目标抓拍图信息，包含抓拍图、特征、特征的底库检索结果信息。

## Roi.msg

roi感知消息，如：人体检测框、人头检测框、人脸检测框、人手检测框。

1、string type

roi类型，如body/head/face/hand。

2、sensor_msgs/RegionOfInterest rect

检测框。

## Attribute.msg

属性感知消息，如：年龄、性别、手势、眼镜、口罩、活体信息、车辆类型、车辆颜色、车辆速度、车辆所在车道等信息。

1、string type

属性类型，如年龄：age，性别：gender， 手势：gesture。

2、int16 value

属性数值。

如age数值定义举例：

​	val为实际年龄数值

gender数值定义举例：

​	"1": "男", "-1": "女"

gesture数值定义举例：

​	0: Background,  // 无手势

​	1: FingerHeart,  // 比心

​	2: ThumbUp,  // 大拇指向上

​	3: Victory, // V手势

​	4: Mute,  // 嘘

​	10: Palm,  // 手掌

​	11: Okay,  //  OK手势

​	12: ThumbRight,  //  大拇指向右

​	13: ThumbLeft,  //  大拇指向左

​	14: Awesome,  //  666手势

## Point.msg

关键点感知结果，如：人脸关键点、人体骨骼点、人手关键点。

1、string type

类型，如body_kps/face_kps/hand_kps。

2、geometry_msgs/Point32[] point

关键点数值。

## Capture.msg

抓拍信息。

1、std_msgs/Header header

抓拍图对应原视频帧的timestamp和frame_id。

2、sensor_msgs/Image img

抓拍图。

3、float32[] features

抓拍图对应的特征数据，数据长度为0时表示无特征。

4、DBResult db_result

特征的底库检索结果。只有当有特征时底库检索结果有效。

## DBResult.msg

底库检索结果。

1、string db_type

底库名称。

2、string match_id

匹配目标ID。

3、float32 distance

特征比对距离。

4、float32 similarity

特征比对相似度。

