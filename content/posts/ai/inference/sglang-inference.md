---
title: "sglang 推理加速实践"
date: 2026-03-13
draft: false
---

## sglang 推理加速实践

sglang 是一个针对 LLM 推理优化的框架，支持 RadixAttention 等高级特性。

### 核心特性

- **RadixAttention** — 自动 KV Cache 复用
- **结构化生成** — JSON、正则约束输出
- **多模态支持** — 图像、视频理解
- **高性能后端** — FlashInfer、FlashAttention

### 快速开始

```bash
# 安装
pip install sglang

# 启动服务
python -m sglang.launch_server --model-path meta-llama/Llama-2-7b

# 调用 API
curl http://localhost:30000/generate \
  -H "Content-Type: application/json" \
  -d '{"text": "What is AI?"}'
```

### 性能对比

| 框架 | 吞吐量 (tokens/s) | 显存占用 |
|------|------------------|----------|
| vLLM | 1200 | 14GB |
| sglang | 1450 | 12GB |
| TGI | 980 | 16GB |

### 适用场景

- 高并发 API 服务
- 结构化数据提取
- 多轮对话系统

---

*持续更新中...*
