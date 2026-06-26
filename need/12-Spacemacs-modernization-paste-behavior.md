# Spacemacs 行为现代化（粘贴、光标、拼写检查）

- **来源**: Reddit r/emacs (2019)
- **链接**: https://www.reddit.com/r/emacs/comments/6o3bu9/how_to_fix_various_issues_with_spacemacsemacs_to/

## 需求描述

用户希望 Spacemacs/Emacs 表现更接近 Sublime Text 等现代编辑器，具体需求：
1. CUA 模式下粘贴到光标之后（类似 Vim 的 p）
2. 光标形状改为竖线（bar）且不被 Spacemacs 覆盖
3. 启用拼写检查时立即检查整个文件

## 关键痛点

- Spacemacs 在启动后覆盖用户的 cursor-type 设置
- 拼写检查 flyspell-buffer 在文件较小时速度反而慢
- 用户对 Emacs 的配置覆盖优先级机制不熟悉
- 希望有更直观的现代化默认值

## 标签

`#spacemacs` `#cua-mode` `#cursor` `#flyspell` `#modernization`
