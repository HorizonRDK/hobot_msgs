# H26X 帧
# 帧序号
uint32 index
# 解码时间戳
builtin_interfaces/Time dts
# 显示时间戳
builtin_interfaces/Time pts
# 帧内容，包含nal 头，00 00 00 01/00 00 01 
uint8[256000] data
uint32 data_size
uint32 MAX_SIZE=256000
