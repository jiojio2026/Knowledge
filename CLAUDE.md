# CLAUDE.md

本文档为 Claude Code (claude.ai/code) 在此仓库中操作代码提供指引。

## 概述

基于 **Hugo** 的个人知识库，部署在 **GitHub Pages**。内容为中文。

## 常用命令

```bash
# 本地开发服务器
hugo server

# 构建生产版本
hugo --gc --minify

# 同步到 GitHub
./sync.sh
```

## 架构结构

**Hugo 静态网站**，使用极简自定义主题（无外部依赖）：

- `content/` — Markdown 内容，按分类组织（`posts/ai/`、`posts/embedded/`）
- `layouts/` — 自定义 HTML 模板，内联 CSS
- `config.toml` — Hugo 配置（baseURL、分页、禁用的 Kinds）
- `public/` — 生成输出（已 gitignore，由 GitHub Actions 构建）

**部署流程**：GitHub Actions (`hugo.yml`) 在推送到 `main` 分支时自动构建并部署到 GitHub Pages。

**文章格式**：Front matter 包含 `title`、`date`、`draft` 字段。
