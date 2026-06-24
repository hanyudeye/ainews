# Emacs Twitter/X 客户端需求

- **来源**: help-gnu-emacs 邮件列表，Yuchen Pei (2024-11-05)
- **链接**: https://yhetil.org/emacs-user/87r07q6wz4.fsf@think.gnu/

## 需求描述

用户需要一个能在 Emacs 内正常使用的 Twitter/X 客户端。现有的 twittering-mode、nntwitter 等项目均已过时/废弃，无法正常工作。

## 关键痛点

- twittering-mode 长期未更新，不支持 X API 变更
- nntwitter 同样已废弃
- 第三方客户端因 X TOS 限制难以开发
- 用户希望在 Emacs 中完成社交媒体的浏览和发布，无需切换到外部工具

## 潜在方案

- 基于 X API v2 或 GraphQL 的新 Emacs 客户端
- 基于 nitter.net 等非官方前端的 Emacs 集成
- 基于 mastodon.el 等 ActivityPub 客户端的思路

## 标签

`#x-twitter-client` `#social-media` `#api` `#abandoned-package`
