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

Posts live in `_posts/` as directories (post bundles) — each contains `index.md` and any associated images.
