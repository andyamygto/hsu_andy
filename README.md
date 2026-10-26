# Andy Hsu — website & notes

網址：<https://andyamygto.github.io/hsu_andy/>

## 一次性設定

```bash
git clone https://github.com/andyamygto/hsu_andy.git ~/hsu_andy
mkdir -p ~/bin && ln -s ~/hsu_andy/bin/note ~/bin/note   # 之後在任何資料夾都能打 note
echo 'source ~/hsu_andy/tools/notes.vim' >> ~/.vimrc      # vim 區塊縮寫
```

（`~/bin` 要在 PATH 裡；沒有的話在 `~/.bashrc` 加 `export PATH=~/bin:$PATH`。）

## 日常：只用 `note`

```bash
note new gw-plasmon-pole "GW plasmon-pole 模型"   # 開新筆記，直接進 vim
note add gw-plasmon ~/Downloads/deriv.pdf bands.png   # 放圖或 PDF 進去
note edit gw-plasmon                               # 之後再打開（名稱打一部分就好）
note list                                          # 看有哪些、哪些還是草稿
note publish gw-plasmon                            # 上線
```

- 新的筆記先是**草稿**，放在 `drafts/`，只存在這台電腦，不會上傳。
- `note publish` 才會放上網站，大約一分鐘後就看得到。
- 已經公開的筆記改完後，打 `note push`。
- 文章（blog）用 `note post 名稱` 開，其他指令都一樣。
- 想先看效果：`note preview`，再打開 http://localhost:1313/hsu_andy/ 。這個要先裝 Hugo。

## 在 vim 裡寫

插入模式打這些，會變成區塊開頭：

| 打 | 區塊 |
|---|---|
| `;def` | 定義 |
| `;res` | 結果 |
| `;der` | 推導（預設收合，點了才展開） |
| `;par` | 參數 |
| `;warn` | 注意 |
| `;idea` `;todo` `;ref` | 想法、待辦、參考 |

區塊裡按 Enter，下一行會自動補 `> `。要結束區塊，就在多出來的 `> ` 那行按 `Ctrl-U`。

其他會用到的寫法：

````markdown
## 小標題

**粗體**　`參數名`　- 條列

$E = mc^2$            行內數學
$$ \Sigma = iGW $$    獨立一行

![說明](bands.png)    圖（note add 會把這行印出來給你）
[推導](deriv.pdf)     檔案

```fortran
do i = 1, n
end do
```
````

完整範例：`content/notes/example-note/index.md`。
數學巨集（`\vb{k}`、`\abs{x}`、`\Tr`、`\dd`、`\expval{x}`）在 `data/katex_macros.yaml`。

## iPad

在 iPad 上傳的東西會**直接公開**，所以適合補資料，不適合打草稿。

- **手寫推導：** 匯出 PDF → Safari 打開 GitHub 上這個 repo → 進到 `content/notes/那篇/` → **Add file → Upload files**。PDF 會自動列在頁面最下方。
- **小修改：** 在 GitHub 網頁打開檔案，按鉛筆圖示編輯。

## 網站其他部分

| 要改 | 檔案 |
|---|---|
| 首頁自我介紹 | `content/_index.md` |
| 名字、副標、連結 | `hugo.toml` |
| 論文（`selected: true` 會列在首頁） | `data/publications.yaml` |
| About | `content/about.md` |
| CV | 把 PDF 放成 `static/files/cv.pdf`，選單和首頁就會出現 CV 連結 |

第一次上線（只做一次）：Settings → Pages → Source 選 **GitHub Actions**。
