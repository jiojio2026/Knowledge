# 📚 知识库

一个基于 **Hugo** 的个人知识库，部署在 **GitHub Pages** 上。

## ✨ 特性

- 🚀 **极速构建** - Hugo 静态网站生成器，毫秒级编译
- 🌐 **GitHub Pages** - 免费托管，自带 HTTPS
- 📝 **Markdown** - 简洁的文档格式
- 🔄 **自动同步** - 一键同步到 GitHub
- 🎨 **简洁设计** - 专注内容，无关干扰
- 📱 **响应式** - 适配手机和桌面

## 🛠️ 技术栈

- **Hugo** - 静态网站生成器
- **GitHub Pages** - 托管平台
- **Git** - 版本控制
- **GitHub Actions** - 自动部署（可选）

## 📦 快速开始

### 前置要求

- Git
- Hugo（推荐 0.120+）
- GitHub 账户

### 本地开发

```bash
# 克隆仓库
git clone https://github.com/jiojio2026/knowleage-base.git
cd knowleage-base

# 启动本地服务器
hugo server

# 访问 http://localhost:1313
```

### 更新并同步到 GitHub

```bash
# 编辑内容（Markdown 文件）
# 在 content/posts/ 和 content/about/ 下添加文章

# 提交并推送
./sync.sh
```

## 📁 项目结构

```
knowledge-base/
├── content/           # 站点内容
│   ├── _index.md     # 首页
│   ├── about/        # 关于页面
│   └── posts/        # 文章目录
├── layouts/          # Hugo 模板
│   ├── index.html    # 首页模板
│   └── posts/        # 文章相关模板
│       ├── single.html
│       └── section.html
├── public/           # 编译输出（自动生成）
├── config.toml       # Hugo 配置文件
├── README.md         # 本文件
├── .gitignore        # Git 忽略规则
└── sync.sh           # 同步脚本
```

## ⚙️ 配置说明

### Hugo 配置（config.toml）

```toml
baseURL = "https://jiojio2026.github.io/Knowledge/"
title = "个人知识库"
languageCode = "zh-cn"
relativeURLs = true
paginate = 10
disableKinds = ["taxonomy", "term", "RSS", "sitemap"]
```

### 同步脚本（sync.sh）

修改仓库地址：

```bash
REMOTE_URL="https://github.com/jiojio2026/knowleage-base.git"
```

## 🚀 部署到 GitHub Pages

### 方法一：使用 sync.sh（推荐）

```bash
# 1. 编辑内容
# 2. 提交并推送
./sync.sh

# 3. 在 GitHub 仓库设置中启用 Pages
#    - Settings > Pages > Source: main branch
```

### 方法二：手动部署

```bash
# 1. 构建
hugo

# 2. 推送到 GitHub
git add .
git commit -m "Update"
git push origin main

# 3. 启用 GitHub Pages
```

## 📝 编写文章

在 `content/posts/` 下创建 Markdown 文件：

```markdown
---
title: "文章标题"
date: 2026-02-27
draft: false
---

文章内容...
```

## 🎨 自定义

### 修改主题

编辑 `layouts/` 下的模板文件，或添加自定义主题。

### 自定义域名

1. 在根目录创建 `CNAME` 文件
2. 添加你的域名，例如：
   ```
   www.example.com
   ```

## 📄 License

MIT License - 自由使用和修改

---

**作者**: jiojio
**更新时间**: 2026-02-27
