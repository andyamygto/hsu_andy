# Andy Hsu — blog & notes

網址：<https://andyamygto.github.io/hsu_andy/>
推到 `master` 之後，GitHub Actions 會自動更新網站，大約一分鐘。

```
content/notes/     整理過的筆記，依 topic 分組
content/posts/     文章，依日期排列
content/about.md   About 頁
data/publications.yaml   論文清單
data/katex_macros.yaml   LaTeX 巨集
static/files/      其他要放上網的檔案 → /hsu_andy/files/檔名
```

一篇筆記 = 一個資料夾：

```
content/notes/gw-plasmon-pole/
├── index.md     內文
├── bands.png    圖
└── deriv.pdf    手寫推導（iPad 匯出的 PDF）
```

`content/notes/example-note/` 是完整範例（草稿，不會公開），直接打開對照最快。

---

## 用 vim 寫

```bash
bin/new note gw-plasmon-pole "GW plasmon-pole 模型"   # 建立資料夾和開頭，直接用 vim 打開
# 寫完
git add -A && git commit -m "GW plasmon-pole 筆記" && git push
```

`bin/new` 產生的檔案預設是 `draft: true`。要公開時，把那行刪掉。

在 `~/.vimrc` 加一行，就能用縮寫打區塊：

```vim
source ~/hsu_andy/tools/notes.vim
```

| 打 | 變成 |
|---|---|
| `;def` | `> [!def]` 定義 |
| `;res` | `> [!result]` 結果 |
| `;der` | `> [!derive]-` 推導（預設收合） |
| `;par` | `> [!param]` 參數 |
| `;warn` | `> [!warn]` 注意 |
| `;idea` `;todo` `;ref` | 想法、待辦、參考 |

區塊裡按 Enter，下一行會自動補上 `> `。要結束區塊，就在多出來的 `> ` 那行按 `Ctrl-U` 清掉。

## 只需要會這些 Markdown

````markdown
## 小標題                      ← 兩個 # ；三個 # 是更小的標題

一般段落。空一行就是新段落。
**粗體**　*斜體*　`程式碼或參數名`

- 條列
- 條列

$E = mc^2$                     ← 行內數學

$$                             ← 獨立一行的數學
\Sigma = iGW
$$

> [!def] 標題                  ← 區塊：第一行寫種類和標題
> 內容，每一行開頭都是 >
> 可以放數學、條列、程式碼

> [!derive]- 推導              ← 加 - 預設收合，點了才展開

![圖的說明](bands.png)          ← 圖片，檔案放同一個資料夾
[下載推導](deriv.pdf)           ← 連結到檔案

```fortran                     ← 程式碼，標上語言就會上色
do i = 1, n
end do
```
````

數學巨集（`\vb{k}`、`\abs{x}`、`\Tr`、`\dd`、`\expval{x}`）在 `data/katex_macros.yaml`，可以自己加。

## 用 iPad

**手寫推導 → PDF**
1. 用任何能匯出 PDF 的手寫 app 寫（內建的備忘錄也可以），匯出 PDF 存到「檔案」。
2. Safari 打開 GitHub 上這個 repo，進到該筆記的資料夾 → **Add file → Upload files**，選 PDF，Commit。
3. 頁面最下方會自動列出 PDF。如果 `index.md` 只有開頭、沒有內文，PDF 會直接顯示在頁面上。

**在 iPad 上打字**
- 小修改：在 GitHub 網頁打開檔案，按鉛筆圖示就能編輯。
- 新的筆記：**Add file → Create new file**，檔名打 `content/notes/資料夾名稱/index.md`，開頭照下面寫：

  ```yaml
  ---
  title: "標題"
  date: 2026-10-26
  topic: "GW"
  ---
  ```

## 其他

- 目錄：有三個以上小標題時自動出現；加 `toc: false` 可以關掉。
- 本機預覽（要先裝 Hugo）：`hugo server -D`，打開 http://localhost:1313/hsu_andy/
- 第一次上線（只做一次）：Settings → Pages → Source 選 **GitHub Actions**。
