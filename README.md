# 数据科学的数学基础（中文翻译）

《Mathematics of Data Science》的中文翻译与在线阅读工程。

> [!IMPORTANT]
> 原始书稿未附带公开许可证。中文翻译属于改编作品，在获得作者或版权方明确授权前，本仓库和预览站点应保持私有，不对外发布正文、图片或构建产物。

## 工程结构

```text
.
├── upstream/en-latex/   # 英文 LaTeX 原稿快照，不在此目录直接翻译
├── site/                # Quarto Book 中文站点
│   ├── chapters/        # 按原书顺序拆分的中文章节
│   ├── assets/figures/  # 原书图片，LaTeX 原稿通过符号链接复用
│   └── styles/          # 站点主题与印刷样式
├── glossary/terms.yml   # 统一术语表
├── scripts/             # 工程检查脚本
└── .github/workflows/   # GitHub Pages 自动部署
```

## 本地预览

安装 [Quarto](https://quarto.org/docs/get-started/) 后：

```bash
make preview
```

构建静态站点：

```bash
make build
```

输出目录为 `site/_site/`。提交前运行 `make check`。

## 翻译流程

翻译规范、公式和引用处理规则见 [TRANSLATION.md](TRANSLATION.md)，协作方式见 [CONTRIBUTING.md](CONTRIBUTING.md)。版本和版权边界见 [COPYRIGHT.md](COPYRIGHT.md)。

