# Andy Hsu — website

網址：<https://andyamygto.github.io/hsu_andy/>

整個網站都在瀏覽器裡編輯，電腦和 iPad 都可以：**<https://app.pagescms.org>**

## 第一次設定（只做一次）

1. 到 GitHub 這個 repo：Settings → Pages → Source 選 **GitHub Actions**。
2. 打開 <https://app.pagescms.org>，用 GitHub 登入，依畫面指示把 Pages CMS 安裝到 `hsu_andy` 這個 repo。
3. 選 `hsu_andy` 和 `master` 分支，左邊就會出現網站的各個部分。

## 左邊選單

| 項目 | 改什麼 |
|---|---|
| 個人資料 | 名字、連結、CV PDF |
| 首頁介紹 | 首頁那段自我介紹 |
| 研究主題 | 首頁 Research 區塊，每個主題可以放一張圖 |
| 論文 | 論文清單；勾「列在首頁」會出現在首頁 |
| 筆記／文章 | 新增、編輯；可以上傳圖和 PDF |
| About 頁 | About 頁內容 |

按 **Save** 就會存到 GitHub，大約一分鐘後網站更新。

## 寫筆記

- **新增：** 筆記 → **Add an entry**，填標題和網址名稱（英文，例如 `gw-plasmon-pole`）。
- **草稿：** 預設勾著「草稿」，這時不會出現在網站上。寫好再取消勾選，然後 Save。
  - 草稿的原始檔在 GitHub 上看得到，不想公開的內容別放進去。
- **圖：** 在「圖」欄位上傳，會依序顯示在文末。想放在文中某處，就在內文寫 `![圖說](檔名.png)`。
- **PDF：** 在「附件」欄位上傳。只有附件、沒有內文時，PDF 會直接顯示在頁面上。

內文是 Markdown：

````markdown
## 小標題

一般段落。空一行是新段落。**粗體**　`參數名`

- 條列

$E = mc^2$                 行內數學
$$ \Sigma = iGW $$         獨立一行

> [!def] 準粒子能量         區塊：def 定義 / result 結果 / derive 推導 / param 參數
> 每一行開頭都是 >            warn 注意 / idea 想法 / todo 待辦 / ref 參考

> [!derive]- 推導           加 - 預設收合

```fortran
do i = 1, n
end do
```
````

範例：筆記 → 範例筆記。數學巨集（`\vb{k}`、`\abs{x}`、`\Tr`、`\dd`、`\expval{x}`）在 `data/katex_macros.yaml`。

## 技術說明

- 網站用 [Hugo](https://gohugo.io) 產生，`.github/workflows/hugo.yml` 在每次 push 到 `master` 時建置和部署。
- Pages CMS 的設定在 `.pages.yml`；上傳的檔案放在 `static/uploads/`。
- 本機預覽：`hugo server -D`，打開 http://localhost:1313/hsu_andy/
