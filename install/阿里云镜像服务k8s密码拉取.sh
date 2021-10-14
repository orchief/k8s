#!/bin/bash
# k8s拉取阿里云私有镜像
# 执行以下命令，创建拉取私有镜像的密钥
kubectl create secret docker-registry aliyun-docker --docker-server=registry.cn-hangzhou.aliyuncs.com --docker-username=天津唐升科技发展有限公司 --docker-password=docker@0315
# 在管理页面添加 Pull Secrets 选择 aliyun-docker
