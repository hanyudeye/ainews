# Eldoc 强制单行显示

- **来源**: Reddit r/emacs (2019)
- **链接**: https://www.reddit.com/r/emacs/comments/cdefjd/help_needed_force_eldoc_to_use_single_line/

## 需求描述

用户喜欢 Eldoc 的功能，但多行文档干扰视线和工作流程，希望强制 Eldoc 只在一行内显示。设置 `eldoc-echo-area-use-multiline-p` 为 nil 无效，因为底层 `eldoc-documentation-function` 并未遵守该变量。

## 关键痛点

- `eldoc-echo-area-use-multiline-p` 变量只是建议性的，最终行为取决于具体的 documentation function 实现
- 不同 major mode 的 eldoc 后端行为不一致
- 缺乏全局的"强制单行"设置
- 用户需要在不同 mode 下分别处理

## 标签

`#eldoc` `#echo-area` `#documentation` `#display`
