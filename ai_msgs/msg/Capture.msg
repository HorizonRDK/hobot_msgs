#  抓拍信息

# 抓拍图对应原视频帧的timestamp和frame_id
std_msgs/Header header

# 抓拍图
sensor_msgs/Image img

# 抓拍图对应的特征数据
float32[] features

# 特征的底库检索结果
DBResult db_result