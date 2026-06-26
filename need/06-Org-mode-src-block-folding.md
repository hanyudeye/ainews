# Org-mode 指定代码块默认折叠

- **来源**: Reddit r/emacs (2023-12)
- **链接**: https://www.reddit.com/r/emacs/comments/18oe1w4/is_there_a_way_to_start_specific_code_blocks_as/

## 需求描述

用户想在 Org-mode 中指定某些 src block 在打开文件时自动折叠，而不是全部折叠或全部展开。希望有一种属性或关键字来控制特定代码块的折叠状态。

## 关键痛点

- org-fold-core API 设计为底层接口，使用复杂
- `org-fold-hide-block-toggle` 需要手动绑定键位
- 没有内置的标记语法（如 `#+attr_org: :fold t`）来控制单个块的折叠
- 用户不想创建和维护一个完整的包

## 标签

`#org-mode` `#org-fold` `#src-block` `#folding` `#visibility`
