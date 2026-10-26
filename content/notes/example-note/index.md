---
title: "範例筆記（不會公開）"
date: 2026-10-26
topic: "Examples"
tags: [template]
draft: true
---

這篇是格式範例，`draft: true` 所以不會出現在網站上。用 `hugo server -D` 才看得到。

## 數學

行內 $E_{n\mathbf{k}}^{\mathrm{QP}} = \epsilon_{n\mathbf{k}} + \langle \psi_{n\mathbf{k}} | \Sigma(E^{\mathrm{QP}}_{n\mathbf{k}}) - V_{xc} | \psi_{n\mathbf{k}} \rangle$，獨立一行：

$$
\Sigma(\mathbf{r},\mathbf{r}';\omega) = \frac{i}{2\pi} \int \dd\omega'\, e^{i\omega'\eta}\, G(\mathbf{r},\mathbf{r}';\omega+\omega')\, W(\mathbf{r},\mathbf{r}';\omega')
$$

自訂巨集（在 `data/katex_macros.yaml`）：$\vb{k}$、$\abs{g_{mn\nu}(\vb{k},\vb{q})}^2$、$\Tr\rho$、$\expval{\hat{n}}$。

## 程式碼

```fortran
do ik = 1, nk
  do ib = 1, nb
    eqp(ib, ik) = edft(ib, ik) + real(sigma(ib, ik) - vxc(ib, ik))
  end do
end do
```

```python
import numpy as np
eqp = edft + (sigma - vxc).real
```

## 圖片與附件

圖片放在同一個資料夾，直接用檔名：

![schematic bands](fig.svg)

PDF 也一樣：`[下載 PDF](notes.pdf)`。

## 表格

| 方法 | 能隙 (eV) |
|---|---:|
| LDA | 0.5 |
| G₀W₀ | 1.1 |
