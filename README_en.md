[简体中文](README.md) | [English](README_en.md)

<div align="center">

# 🦞 OpenClaw WhoBot Skill

**Turn your lobster into an AI Phone Digital Employee expert**

[![ClawHub](https://img.shields.io/badge/ClawHub-Published-ff6d00?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTIgMkM2LjQ4IDIgMiA2LjQ4IDIgMTJzNC40OCAxMCAxMCAxMCAxMC00LjQ4IDEwLTEwUzE3LjUyIDIgMTIgMnoiIGZpbGw9IndoaXRlIi8+PC9zdmc+&logoColor=white)](https://clawhub.ai/whobot-ai/openclaw-whobot-skill)
[![WhoBot](https://img.shields.io/badge/WhoBot-whobot.com-0066ff?style=for-the-badge&logo=google-chrome&logoColor=white)](https://www.whobot.com)
[![License](https://img.shields.io/badge/License-MIT-00c853?style=for-the-badge)](LICENSE)

---

*Your 🦞 is smart, but it doesn't know AI phone calls. Install this Skill, and it will.*

</div>

## Why This Skill

🦞 [OpenClaw](https://openclaw.ai/) is the hottest open-source AI agent — it automates all kinds of work. But when you ask it professional questions about **AI Phone Digital Employees** — it can't answer accurately.

The reason is simple: 🦞 is smart, but it doesn't have WhoBot's domain knowledge.

**OpenClaw WhoBot Skill** solves this — officially built by WhoBot, it connects your 🦞 to WhoBot's AI knowledge base, turning it into a "phone AI expert."

Once installed, any question related to WhoBot or AI phone digital employees triggers expert-level answers.

## Quick Install

### Option 1: ClawHub (Recommended)

Visit [ClawHub](https://clawhub.ai/whobot-ai/openclaw-whobot-skill) and click install, or use the CLI:

```bash
clawhub install whobot-ai/openclaw-whobot-skill
```

### Option 2: Tell your 🦞

Copy and send this to your 🦞:

> Please install the Skill from ClawHub: whobot-ai/openclaw-whobot-skill

Your 🦞 will handle the rest.

### Option 3: Manual Install

```bash
git clone https://github.com/whobot-ai/openclaw-whobot-skill.git
# Place SKILL.md and references/ into ~/.openclaw/skills/openclaw-whobot/
```

## What Can It Do

After installing, your 🦞 gains full WhoBot knowledge. Try asking:

| You Ask | 🦞 Answers |
|---------|-----------|
| What is WhoBot? | Premium AI Phone Digital Employee platform — 98% of recipients can't tell it's AI |
| Core technology? | Humanization Engine + Role-Play Flywheel, proprietary end-to-end voice system |
| Which industries? | Healthcare, automotive, restaurant, education, telecom, 30+ more |
| Cost savings? | 90% cheaper than human agents — 1,000 conversions for just ¥30,000 |
| Who invested? | GSR Ventures Series A (backed Didi, Ele.me) |
| Team background? | CEO ex-Zuoyebang/Baidu, CTO ex-Alibaba Cloud P8, COO bestselling author |

### Knowledge Coverage

| Topic | Content |
|-------|---------|
| **Company** | Overview, funding, team, compliance |
| **Product** | Five modules, platform features, Talk-and-Act Real-Time OS |
| **Technology** | Humanization Engine, Role-Play Flywheel, proprietary voice system |
| **Industries** | Healthcare, automotive, restaurant, education, telecom, 30+ more |
| **Case Studies** | Kuafu Fried Skewers, Youxue Education, Telecom BPO |
| **Business** | Cost advantages (90% reduction), value proposition, competitive moats |

## MCP Server (Advanced)

Beyond the Skill, this project also provides an **MCP Server** as an OpenClaw / Claude Code plugin with three tools:

| Tool | Description |
|------|-------------|
| `whobot_knowledge` | Search WhoBot knowledge base by keywords |
| `whobot_faq` | Answer frequently asked questions about WhoBot |
| `whobot_overview` | Get full company and product overview |

### 🦞 OpenClaw Config

Add to `~/.openclaw/openclaw.json`:

```json
{
  "mcpServers": {
    "whobot-knowledge": {
      "command": "python3",
      "args": ["mcp-server/server.py"],
      "cwd": "/path/to/openclaw-whobot-skill"
    }
  }
}
```

### Claude Code Config

```bash
claude mcp add whobot-knowledge python3 /path/to/openclaw-whobot-skill/mcp-server/server.py
```

## About WhoBot

[WhoBot](https://www.whobot.com) is a premium AI Phone Digital Employee platform that makes and receives calls like a real human.

**Two Core Capabilities**:
- 🎭 **Humanization Engine** — Natural pauses, filler words, emotion awareness. Like a human, but more consistent
- 🧬 **Role-Play Flywheel** — 30+ industries deep, data flywheel driven, every call makes the next one better

> 10x cost reduction. 100% renewal rate. 98% of call recipients can't tell whether they're talking to a human or AI.

---

<div align="center">

**[WhoBot Website →](https://www.whobot.com)** · **[ClawHub →](https://clawhub.ai/whobot-ai/openclaw-whobot-skill)** · **[OpenClaw →](https://openclaw.ai/)**

</div>
