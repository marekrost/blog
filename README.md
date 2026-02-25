# marekrost.cz

Personal blog of Marek Rost. Built with Jekyll 4 and deployed to GitHub Pages via GitHub Actions.

## Stack

- **Jekyll 4.4** — static site generator
- **GitHub Actions** — CI/CD pipeline (`.github/workflows/deploy.yml`)
- **jekyll-feed** / **jekyll-seo-tag** / **jekyll-sitemap** — RSS, Open Graph meta tags, sitemap

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Site will be available at `http://localhost:4000`.

## Structure

Posts live in `_posts/` as directories (post bundles). Each contains `index.md` and any associated images. Assets (media, apps, scripts, etc.) are kept alongside the post's `index.md` rather than in a global `assets/` folder so that each post is self-contained. Jekyll doesn't natively copy non-markdown files from post bundle directories, so a custom micro-plugin (`_plugins/post_assets.rb`) handles that — it hooks into `posts:post_write` and copies every non-markdown file from the source directory to the output.

Static pages live in `_pages/` (e.g. `_pages/about/index.md`). The directory is registered as a Jekyll collection so pages can be managed outside the project root.
