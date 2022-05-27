# H26X 帧
# 帧序号
uint32 index
# 解码时间戳
builtin_interfaces/Time dts
# 显示时间戳
builtin_interfaces/Time pts
uint8[12] encoding
uint32 height
uint32 width
# 帧内容，包含nal 头，00 00 00 01/00 00 01 
uint8[512000] data
uint32 data_size
uint32 MAX_SIZE=512000
