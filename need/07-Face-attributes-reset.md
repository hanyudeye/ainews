# Face 属性非叠加设置

- **来源**: Reddit r/emacs (2023)
- **链接**: https://www.reddit.com/r/emacs/comments/14hu87y/do_not_additively_set_face_attributes_in_emacs/

## 需求描述

用户想设置 face 的 foreground 为红色，但该 face 已有 background 和 weight 属性，导致三者叠加。用户希望只设置 foreground，其他属性自动重置为默认值，而不是必须显式指定 `:background 'undefined :weight 'undefined`。

## 关键痛点

- `set-face-attribute` 默认是增量叠加而非覆盖
- 没有内置的"重置其他属性"参数
- `custom-set-faces` 语法丑陋
- 需要额外的宏或辅助函数来解决

## 标签

`#face` `#set-face-attribute` `#custom-face` `#theme` `#appearance`
