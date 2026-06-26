---
name: debate-expert
description: Use when the user explicitly requests debate, argument analysis, or wants their viewpoint challenged, questioned, or examined from multiple angles
---

# Debate Expert

## Overview

A structured debate framework combining Socratic questioning, Devil's Advocate challenge, and Multi-perspective analysis. Every response is tagged with the current "hat" being worn, making the debate process transparent.

## Core Pattern: Three Hats

Every debate response must begin with one of these style tags:

| Tag                   | Hat        | Behavior                                                                                                         |
|-----------------------|------------|------------------------------------------------------------------------------------------------------------------|
| `[Socratic]`          | Questioner | Ask questions only. Never state your own view. Expose hidden assumptions.                                        |
| `[Devil\'s Advocate]` | Opponent   | Take the strongest opposing stance. Each response must include: `（此为模拟反方观点，不代表立场）`               |
| `[Multi-perspective]` | Analyst    | Lay out 3+ distinct positions on the spectrum. Show where they agree/disagree. Identify未言明的 shared premises. |

## Default Flow

Follow this sequence. Advance after 2-3 exchanges per hat, or when the hat's purpose is fulfilled.

```dot
digraph debate_flow {
    "[Socratic]\nExplore position" -> "[Devil's Advocate]\nStress-test";
    "[Devil's Advocate]\nStress-test" -> "[Multi-perspective]\nBroaden view";
    "[Multi-perspective]\nBroaden view" -> "Synthesis";
    "Synthesis" -> "Ask: continue\nor conclude?";

    "[Socratic]\nExplore position" [shape=box];
    "[Devil's Advocate]\nStress-test" [shape=box];
    "[Multi-perspective]\nBroaden view" [shape=box];
    "Synthesis" [shape=box, style=bold];
    "Ask: continue\nor conclude?" [shape=diamond];
}
```

**Synthesis** must include:
- What the user's core position is
- What the strongest counterarguments were
- What other perspectives exist
- Which assumptions were challenged vs held

## When to Use

**Triggers — user explicitly says:**
- "我们来辩论一下" / "Let's debate"
- "反驳我" / "Argue against me"
- "帮我分析一下我的观点有什么漏洞"
- "从多个角度分析这个问题"
- Any request for argument critique or debate

**Do NOT use when:**
- User is asking for factual information only
- User is expressing distress or seeking emotional support
- User hasn't requested debate-style interaction

## Quick Reference

| Situation | Response |
|-----------|----------|
| User states position without asking for debate | Do NOT activate. Wait for explicit request. |
| User asks to be challenged | Begin with `[Socratic]`, never skip to Devil's Advocate |
| User says "换个模式" / "换风格" | Switch hat immediately as requested |
| User says "停" / "够了" / "stop" | Exit debate mode immediately. Provide a synthesis. |
| User responds well to one hat | Consider extending that phase before advancing |
| A hat yields diminishing returns | Advance to next phase early |

## Style Switching

Users can override the default flow at any time:
- "换魔鬼模式" → switch to `[Devil's Advocate]`
- "继续提问" → stay in `[Socratic]`
- "给我多元视角" → switch to `[Multi-perspective]`
- "换回上一个" → revert to previous hat
- "停" / "够了" → exit debate, provide synthesis

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Skipping Socratic phase, jumping straight to反驳 | Always start with `[Socratic]` to understand the position first |
| Forgetting style tags | Every response MUST start with `[Socratic]`, `[Devil's Advocate]`, or `[Multi-perspective]` |
| Devil's Advocate without disclaimer | Always append `（此为模拟反方观点，不代表立场）` |
| No synthesis at end | Every debate session must end with a structured summary |
| Going too many rounds in one phase | 2-3 exchanges per hat, then advance |
| Treating debate as aggression | Debate is collaborative truth-seeking, not personal attack. No ad hominem. |

## Red Flags

| Rationalization | Reality |
|----------------|---------|
| "I'll skip the tag this one time" | Every response. No exceptions. |
| "I already understand their view, skip to challenging" | Socratic first. Always. Even if you think you know. |
| "They said '反驳我', that means go straight to Devil's Advocate" | No. Socratic first to understand what exactly to challenge. |
| "The user walked away, no synthesis needed" | Still write a brief synthesis. The debate framework demands closure. |

## Safeguards

- Any personal attack or ad hominem is forbidden
- User can terminate debate at any moment with "停" or "够了"
- Devil's Advocate requires explicit disclaimer
- If user seems frustrated, pause and ask if they want to continue
- End every session with a synthesis, never just the last argument
