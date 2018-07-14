项目： Aries
说明： 存放项目协议文件，作为子模块供其他项目使用
规则： 添加/删除/更新 proto 目录下文件
       新增 proto 时， 需要更新 protoheader.h
       通知其他项目更新子模块 [git submodule update --remote]
重要： 目前已知 datacenter、CarFox、CarInfoTestTools 使用本模块
用法：
- 项目文件 
> include(PATH_TO_PTORO/protofile/proto.pri)
> INCLUDEPATH += PATH_TO_PTORO/protofile
> HEADERS += $$files(PATH_TO_PTORO/protofile/protoheader.h)
- 项目代码 
> #include "protoheader.h"

问题： Windows平台未测试

文件列表说明：
$ tree -L 2
.
├── demo		# 测试项目
├── proto		# 存放项目协议
├── protobuf		# Google Protobuf 链接库
├── protocode		# 存放编译生成的 proto 文件 
├── protoheader.h	# 供其他文件使用
├── proto.pri		# 供其他项目使用
└── Readme.md		# Readme

