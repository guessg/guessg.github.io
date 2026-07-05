# guessg

使用 [jekyllBear](https://github.com/knhash/jekyllBear) 构建的个人博客：

<https://guessg.github.io>

## 写文章

在 `_posts` 中创建文件，文件名格式为：

```text
YYYY-MM-DD-title.md
```

文章开头使用：

```yaml
---
layout: post
title: "文章标题"
date: 2026-07-05 12:00:00 +0800
tags: [general]
---
```

推送到 `main` 后，GitHub Pages 会自动更新网站。

## 本地预览

```bash
bundle install
bundle exec jekyll serve
```
