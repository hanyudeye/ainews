# Yasnippets 与 Company 补全集成问题

- **来源**: Reddit r/emacs (2024-11)
- **链接**: https://www.reddit.com/r/emacs/comments/1giruo6/getting_yasnippets_to_work_with_company.json

## 需求描述

用户在 Doom Emacs 中尝试让 yasnippets 显示在 company 补全弹出菜单中。目前的配置仅部分工作（重载配置后能在 elisp-mode 工作），在 latex-mode 中完全失效。

## 关键痛点

- 配置复杂，多个代码片段方案均不完美
- 重载配置后反而导致 company 停止工作
- 在不同 major mode 下行为不一致
- 缺乏清晰的官方/社区推荐配置

## 标签

`#yasnippet` `#company-mode` `#auto-completion` `#doom-emacs` `#latex`
