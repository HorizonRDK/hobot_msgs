# 感知结果

# 消息头
std_msgs/Header header

# 感知结果的处理帧率
# fps val is invalid if fps is less than 0
int16 fps

# 性能统计信息，比如记录每个模型推理的耗时
Perf[] perfs

# 感知目标集合
Target[] targets

# 消失目标集合
Target[] disappeared_targets
