# Emacs 31 :custom-face 回归问题

- **来源**: emacs-devel 邮件列表，Joost Kremers (2026-06)
- **链接**: https://yhetil.org/emacs-devel/877bohs1ju.fsf@melete.silentflame.com/t/

## 需求描述

用户在 Emacs 30 中使用 `use-package` 的 `:custom-face` 修改主题的 face 属性工作正常，但在编译 Emacs 31 后，对 Emacs 内置 face（如 isearch、mode-line）的定制不生效了。外部包的 face 定制仍有效。

## 关键痛点

- `:custom-face` 在 Emacs 31 中行为改变（回归）
- 已定位到具体 commit (ebcde0f90f6)
- 该 bug 被归档但未修复
- 用户只能使用 set-face-attribute 作为 workaround

## 标签

`#emacs-31` `#custom-face` `#use-package` `#regression` `#bug`
