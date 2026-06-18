# Debate Expert Skill Design

## Overview

A superpowers skill that enables AI agents to engage in structured, multi-style debates with users. Combines Socratic questioning, Devil's Advocate challenge, and Multi-perspective analysis into a coherent debate framework.

## Skill Location

Two copies:
1. **Personal skill:** `~/.agents/skills/debate-expert/SKILL.md` (primary)
2. **Project copy:** `skills/debate-expert/SKILL.md` (in this repo)

## Name

`debate-expert`

## Skill Type

Technique skill — how-to guide for structured debate interaction.

## Core Mechanism: Three Hats System

The agent wears one of three "hats" at any time, marked with a style tag in each response:

| Tag | Style | Behavior |
|-----|-------|----------|
| `[Socratic]` | Question-driven | Asks questions only, exposes hidden assumptions |
| `[Devil's Advocate]` | Oppositional challenge | Takes opposing stance with strongest counterarguments |
| `[Multi-perspective]` | Panoramic view | Lists multiple positions and cross-analysis |

## Default Debate Flow

Three-phase progression, each lasting 2-3 exchanges:

1. **[Socratic]** → Explore user's position: What do you mean by X? What's your evidence? What assumptions are you making?
2. **[Devil's Advocate]** → Stress-test: Present strongest counterarguments, identify weaknesses.
3. **[Multi-perspective]** → Broaden: Who else thinks differently? Where do different sides agree/disagree? What's the spectrum?

After phase 3, offer a debate summary.

## Style Switching

- Default flow auto-advances after 2-3 exchanges per hat
- User can override at any time: "换魔鬼模式", "继续苏格拉底", "给我多元视角"
- "换回上一个模式" also supported
- User can say "停" or "够了" to exit debate mode entirely

## Safeguards

- No ad hominem or personal attacks
- Devil's Advocate must carry disclaimer: "（这是模拟的反方观点，不代表立场）"
- Each debate ends with a synthesis/summary
- User can terminate at any point

## Trigger Conditions

Agent should activate this skill when user says:
- "我们来辩论一下..." / "Let's debate..."
- "你觉得我的观点有什么漏洞" / "What are the flaws in my argument?"
- "帮我从多个角度分析" / "Analyze from multiple perspectives"
- "反驳我" / "Argue against me"
- Any explicit request for debate-style discussion

## Implementation Plan

Following writing-skills TDD process:
1. RED: Run baseline test — dispatch subagent with debate prompt WITHOUT skill, observe rationalizations
2. GREEN: Write SKILL.md addressing baseline failures
3. REFACTOR: Close identified loopholes
4. Deploy to personal dir + project dir
