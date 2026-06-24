# 安装包后默认字体设置丢失

- **来源**: GNU Emacs bug#80872，Dave Marquardt (2026-04)
- **链接**: https://lists.libreplanet.org/archive/html/bug-gnu-emacs/2026-04/msg01301.html

## 需求描述

用户通过菜单 Options -> Set Default Font 设置了默认字体并保存到 init.el。但在安装某些包（如 alda-mode）后，`custom-set-faces` 中的字体配置被覆盖，只剩下 `(:background nil)`。

## 关键痛点

- `custom-set-faces` 块在安装包时被意外覆写
- 行为表现为"随机"——并非所有包都会触发
- Customize 系统的 `custom-set-faces` 只有一个实例的约束容易出问题
- 用户难以理解触发条件和复现步骤

## 标签

`#custom-set-faces` `#font` `#package-install` `#customize` `#bug`
