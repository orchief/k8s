#!/bin/bash
# 1. Dockerfile 时区设置
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

# 创建时区配置
kubectl create configmap tz --from-file=/usr/share/zoneinfo/Asia/Shanghai

# Create、Update a YAML file to configure the time zone.

volumeMounts:
    - name: tz
    mountPath: /etc/localtime
    subPath: Shanghai
volumes:
- name: tz
    configMap:
    name: tz