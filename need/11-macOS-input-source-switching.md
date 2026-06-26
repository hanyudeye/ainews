# macOS 输入法自动切换（M-x 时）

- **来源**: DEV Community，masutaka (2026-06-21)
- **链接**: https://dev.to/masutaka/switching-from-the-mac-port-build-of-emacs-to-the-standard-ns-build-lh4

## 需求描述

用户在 macOS 上使用日文输入法，进入 minibuffer（如 M-x）时希望自动切换到英文输入，退出 minibuffer 后恢复日文输入。之前依赖 Mac port 版本的 Emacs，但 Mac port 停止更新（仅支持到 29.4），需要在新版 Emacs 中复现此行为。

## 关键痛点

- Mac port 已过时，最新 Emacs 30.2 不支持
- 标准 NS 构建没有内置的输入法切换功能
- 需要第三方工具（macism）和包（emacs-smart-input-source）配合
- 配置涉及多个组件，发现和设置成本高

## 标签

`#macOS` `#input-method` `#minibuffer` `#sis` `#macism` `#mac-port`
