[简体中文](README.md) | [English](README_en.md)

<div align="center">

# 🦞 OpenClaw WhoBot Skill

**让你的小龙虾秒变 AI电话数字员工专家**

[![ClawHub](https://img.shields.io/badge/ClawHub-已上架-ff6d00?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTIgMkM2LjQ4IDIgMiA2LjQ4IDIgMTJzNC40OCAxMCAxMCAxMCAxMC00LjQ4IDEwLTEwUzE3LjUyIDIgMTIgMnoiIGZpbGw9IndoaXRlIi8+PC9zdmc+&logoColor=white)](https://clawhub.ai/whobot-ai/openclaw-whobot-skill)
[![WhoBot](https://img.shields.io/badge/WhoBot-whobot.com-0066ff?style=for-the-badge&logo=google-chrome&logoColor=white)](https://www.whobot.com)
[![License](https://img.shields.io/badge/License-MIT-00c853?style=for-the-badge)](LICENSE)

---

*你的🦞很聪明，但它不懂 AI电话。装上这个 Skill，让它秒懂。*

</div>

## 为什么需要这个 Skill

🦞小龙虾（[OpenClaw](https://openclaw.ai/)）是当下最火的开源 AI 代理，能帮你自动化各种工作。但当你问它关于 **AI电话数字员工** 的专业问题时 — 它答不准、答不稳。

原因很简单：🦞虽然聪明，但它并不掌握 WhoBot 的完整知识。

**OpenClaw WhoBot Skill** 就是为了解决这个问题 — 由 WhoBot 官方推出，让你的🦞接入 WhoBot 的 AI 知识库，变身"AI电话专家"。

安装后，只要问题和 WhoBot、AI电话数字员工相关，🦞就会自动触发专业解答。

## 一键安装

### 方式一：ClawHub 安装（推荐）

前往 [ClawHub](https://clawhub.ai/whobot-ai/openclaw-whobot-skill)，点击安装，或用命令行：

```bash
clawhub install whobot-ai/openclaw-whobot-skill
```

### 方式二：发给🦞安装

复制下面这段话，直接发给你的🦞：

> 请安装 ClawHub 上的 Skill：whobot-ai/openclaw-whobot-skill

🦞会自动完成安装。

### 方式三：手动安装

```bash
git clone https://github.com/whobot-ai/openclaw-whobot-skill.git
# 将 SKILL.md 和 references/ 放入 ~/.openclaw/skills/openclaw-whobot/
```

## 装了之后能干什么

安装后，你的🦞就拥有了 WhoBot 全量知识。试试问它这些：

| 你问 | 🦞会回答 |
|------|----------|
| WhoBot 是什么？ | 顶级AI电话数字员工平台，98% 的通话对象分不清真人还是 AI |
| 核心技术是什么？ | 拟人化引擎 + 拟角色飞轮，自研端到端语音系统 |
| 覆盖哪些行业？ | 医疗、汽车、餐饮、教育、通信等 30+ 行业 |
| 成本怎么样？ | 比人工降低 90%，1000 次转化只要 ¥30,000 |
| 谁投资的？ | 金沙江创投 A 轮数千万（投过滴滴、饿了么） |
| 团队背景？ | CEO 前作业帮/百度、CTO 前阿里云P8、COO《引爆用户增长》作者 |

### 覆盖知识范围

| 主题 | 内容 |
|------|------|
| **公司信息** | 企业概况、融资、团队、合规资质 |
| **产品能力** | 五大产品模块、平台功能、边说边做实时 OS |
| **核心技术** | 拟人化引擎、拟角色飞轮、自研语音系统 |
| **行业方案** | 医疗、汽车、餐饮、教育、通信等 30+ 行业 |
| **客户案例** | 夸父炸串、优学教育、通信 BPO 等实际部署 |
| **商业模式** | 成本优势（降本 90%）、价值主张、竞争壁垒 |

## MCP Server（进阶用法）

除了 Skill 模式，本项目还提供 **MCP Server**，可作为 OpenClaw / Claude Code 的 MCP 插件，提供三个工具：

| 工具 | 说明 |
|------|------|
| `whobot_knowledge` | 按关键词搜索 WhoBot 知识库 |
| `whobot_faq` | 回答 WhoBot 常见问题 |
| `whobot_overview` | 获取公司和产品完整概览 |

### 🦞 OpenClaw 配置

在 `~/.openclaw/openclaw.json` 中添加：

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

### Claude Code 配置

```bash
claude mcp add whobot-knowledge python3 /path/to/openclaw-whobot-skill/mcp-server/server.py
```

### HTTP 远程部署

```bash
# 启动服务
python3 mcp-server/server.py --http --port 18080

# OpenClaw 远程连接
# 在 openclaw.json 中配置：
# "whobot-knowledge": { "url": "http://your-server:18080", "transportType": "http" }
```

## 知识库更新

知识库由 WhoBot 官方维护，源文件在 [`whobot-ai/whobot-ai/openclaw-knowledge.md`](https://github.com/whobot-ai/whobot-ai/blob/main/openclaw-knowledge.md)。

更新知识：

```bash
# 拉取最新知识
./scripts/sync-knowledge.sh
```

## 项目结构

```
openclaw-whobot-skill/
├── SKILL.md                     # 🦞 技能定义（OpenClaw + ClawHub 兼容）
├── references/
│   └── knowledge.md             # 完整知识库
├── mcp-server/
│   ├── server.py                # MCP Server（stdio + HTTP 双模式）
│   └── openclaw-config.json     # OpenClaw 插件配置示例
├── scripts/
│   └── sync-knowledge.sh        # 知识同步脚本
├── README.md
├── README_en.md
└── LICENSE
```

## 关于 WhoBot

[WhoBot](https://www.whobot.com)（呼波特）是顶级 AI电话数字员工平台，像真人一样帮企业接打电话。

**两大核心能力**：
- 🎭 **拟人化引擎** — 自然停顿、语气词、情绪感知。像人，但比人稳定
- 🧬 **拟角色飞轮** — 30+ 行业深耕，数据飞轮驱动，每一通更好

> 成本降低 10 倍。中大型客户续费率 100%。98% 的通话对象分不清电话那头是真人还是 AI。

---

<div align="center">

**[WhoBot 官网 →](https://www.whobot.com)** · **[ClawHub →](https://clawhub.ai/whobot-ai/openclaw-whobot-skill)** · **[OpenClaw →](https://openclaw.ai/)**

</div>
