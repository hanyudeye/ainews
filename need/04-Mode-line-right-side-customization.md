# Mode-line 右侧自定义变量显示

- **来源**: Reddit r/emacs (2026-05)
- **链接**: https://www.reddit.com/r/emacs/comments/1k588u8/how_can_i_show_a_variable_on_the_left_of_the/

## 需求描述

用户想在 mode-line 的右侧区域（但不覆盖已有内容）显示 buffer-local 变量的值。尝试使用 `setq-local mode-line-format` + `cons` 只能加到最左侧，使用 `append` 则完全看不到。

## 关键痛点

- mode-line-format 构造复杂，学习曲线陡
- buffer-local vs global 的 mode-line 定制行为不同
- 需要精确控制元素在 mode-line 中的位置（右对齐但保持为第一个右侧元素）
- 现有文档和示例不够直观

## 标签

`#mode-line` `#mode-line-format` `#modeline` `#customization`
