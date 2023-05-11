# Changelog for package ai_msgs

tros_2.0.0 (2023-05-11)
------------------
1. 更新package.xml，支持应用独立打包

tros_1.1.2rc1 (2022-10-08)
------------------
1. roi感知消息Roi.msg中增加用于表示检测结果置信度的成员float32 confidence。
2. 属性感知消息Attribute.msg中增加用于表示属性结果置信度的成员float32 confidence。

v1.0.6 (2022-08-25)
------------------
1. 属性感知消息Attribute.msg中属性数值value成员类型由int16变更为float32，可用于表示更丰富的属性信息。

v1.0.2 (2022-07-08)
------------------
1. 关键点感知结果消息Point.msg中增加confidence成员，用于表示每个关键点的置信度。

v1.0.1 (2022-06-23)
------------------
1. 性能统计信息Perf.msg中增加time_ms_duration成员，用于表示处理耗时。
