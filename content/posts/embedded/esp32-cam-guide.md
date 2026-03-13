---
title: "ESP32-CAM 开发指南"
date: 2026-03-13
draft: false
---

## ESP32-CAM 开发指南

ESP32-CAM 是一款性价比极高的开发板，集成了 WiFi、蓝牙和摄像头接口。

### 硬件规格

| 参数 | 规格 |
|------|------|
| 主控 | ESP32-S |
| 内存 | 520KB SRAM + 4MB PSRAM |
| 摄像头 | OV2640 (默认) / OV3660 |
| 存储 | SD 卡槽 |
| 无线 | WiFi 802.11 b/g/n + 蓝牙 4.2 |

### 开发环境

```bash
# PlatformIO 配置
platform = espressif32
board = esp32cam
framework = arduino
```

### 常见问题

1. **上传失败** — 需要按住 BOOT 键再按 RESET 进入下载模式
2. **摄像头初始化失败** — 检查 PSRAM 是否启用
3. **WiFi 连接不稳定** — 增加天线或降低发射功率

### 参考链接

- [官方文档](https://docs.espressif.com/)
- [Home Robot 项目](../projects/home-robot)
