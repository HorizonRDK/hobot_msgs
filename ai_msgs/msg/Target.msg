# 目标消息

# 目标类型名称，如：人、车、动物、物体
# person/car/object/animal
string type

# 目标跟踪ID号
uint64 track_id

# 检测框
Roi[] rois

# 属性
Attribute[] attributes

# 关键点
Point[] points

# 跟踪目标抓拍图、特征、特征的底库检索结果信息
Capture[] captures
