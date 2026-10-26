# Chih-En (Andy) Hsu — personal website

A small, dependency-light Jekyll site, built natively by GitHub Pages.
Live at <https://andyamygto.github.io/hsu_andy/>.

## Where things live

| What | File |
| --- | --- |
| Name, affiliation, links, photo, CV PDF | `_config.yml` (`author:` block) |
| Home page text and research themes | `index.html` |
| Publications (home page + Publications + CV) | `_data/publications.yml` |
| News items | `_data/news.yml` |
| CV page | `cv.md` |
| Styles (light/dark colour tokens at the top) | `assets/css/main.css` |

### Common edits

- **Add a paper:** add an entry at the top of `_data/publications.yml`. Set `selected: true` to show it on the home page.
- **Add a photo:** save a square image as `assets/img/profile.jpg` and uncomment `avatar:` in `_config.yml`.
- **Add a PDF CV:** put it at `files/cv.pdf` and uncomment `cv_pdf:` in `_config.yml`.
- **Move to `andyamygto.github.io`:** rename the repository to `andyamygto.github.io` and set `baseurl: ""`.

## Preview locally

```bash
bundle install
bundle exec jekyll serve      # http://localhost:4000/hsu_andy/
```

## Publishing

Settings → Pages → *Deploy from a branch* → `master` / `(root)`.
