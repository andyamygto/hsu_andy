# Andy Hsu — blog & notes

網址：<https://andyamygto.github.io/hsu_andy/>
用 [Hugo](https://gohugo.io) 建置。推到 `master` 之後，GitHub Actions 會自動更新網站，大約一分鐘。

## 資料夾

```
content/posts/     文章（依日期排列）
content/notes/     整理過的筆記（依 topic 分組）
content/about.md   About 頁
data/publications.yaml  論文清單
data/katex_macros.yaml  LaTeX 巨集
static/files/      其他要放上網的檔案 → /hsu_andy/files/檔名
```

## 新增一篇（直接在 GitHub 網頁上）

1. 進入 `content/notes/`（或 `content/posts/`）→ **Add file → Create new file**
2. 檔名打 `gw-basics/index.md`。打斜線會自動建立資料夾。
3. 開頭貼上：

   ```yaml
   ---
   title: "GW 筆記"
   date: 2026-10-26
   topic: "GW"        # 只有 notes 需要，用來分組
   tags: [GW, BerkeleyGW]
   ---
   ```

4. 底下用 Markdown 寫，然後 Commit。
5. 圖片或 PDF：到同一個資料夾 **Add file → Upload files**，拖進去即可。文章裡這樣引用：

   ```markdown
   ![bands](bands.png)
   [下載 PDF](gw-notes.pdf)
   ```

也可以一次上傳整個資料夾：先在電腦上建好含 `index.md`、圖片、PDF 的資料夾，再拖進 `content/notes/`。

## 寫作語法

- 數學：`$...$` 行內，`$$...$$` 獨立一行，在建置時由 KaTeX 轉成 HTML。
  巨集寫在 `data/katex_macros.yaml`，例如 `\vb{k}`、`\abs{x}`、`\Tr`。
- 程式碼：用 ```` ```fortran ```` 或 ```` ```python ````。
- 草稿：開頭加 `draft: true` 就不會公開。
- 目錄：有三個以上小標題時自動出現；加 `toc: false` 可以關掉。
- `content/notes/example-note/` 是格式範例（草稿，不會公開）。

### Obsidian / Typora 使用者

- 圖片存放位置設成「與筆記同資料夾」。
- Obsidian：設定 → Files & Links → 關閉 *Use [[Wikilinks]]*，圖片才會是一般的 `![](x.png)`。

## 本機預覽

```bash
hugo server -D        # http://localhost:1313/hsu_andy/ ，-D 會連草稿一起顯示
```

## 第一次設定（只做一次）

Settings → Pages → Build and deployment → Source 選 **GitHub Actions**。
