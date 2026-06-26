# use-package-always-ensure 被忽略

- **来源**: Reddit r/emacs (2026)
- **链接**: https://www.reddit.com/r/emacs/comments/1phsaa5/setq_usepackagealwaysensure_t_is_ignored/

## 需求描述

用户设置 `(setq use-package-always-ensure t)` 后发现 `use-package` 声明的包并未自动安装，必须显式加 `:ensure t`。用户使用 Emacs 30.2，感到困惑。

## 关键痛点

- `use-package-always-ensure` 定义在 `use-package-ensure.el`，需要 `(require 'use-package-ensure)` 才能生效
- 文档中对此说明不足，用户容易踩坑
- Emacs 内置 use-package 的 autoload 机制导致行为不一致
- 希望 `use-package-always-ensure` 能开箱即用，无需额外 require

## 标签

`#use-package` `#package-management` `#ensure` `#configuration`
