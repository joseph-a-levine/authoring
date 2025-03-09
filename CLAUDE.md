# Jekyll Personal Website - Dev Guide

## Build/Test Commands
- `bundle install` - Install dependencies
- `jekyll build` - Generate site files
- `jekyll serve -w` - Preview site locally with live reload
- `rake generate` - Generate blog files
- `rake publish` - Generate and publish blog to gh-pages

## Structure
- `_posts/` - Blog posts with YYYY-MM-DD-title.md format
- `_older/` - Archived content collection
- `_layouts/` - Template files
- `_includes/` - Header, footer, page components
- `assets/` - Images and resources
- `css/` - SCSS style files

## Content Patterns
- Add `hide_date: true` to frontmatter to hide page dates
- Use these Tufte-style elements:
  - `{% sidenote "id" "content" %}`
  - `{% marginnote "id" "content" %}`
  - `{% newthought "content" %}`
  - `{% marginfigure "id" "img_path" "caption" %}`

## Workflow
- Edit `_includes/header.html` to update navigation
- Frontmatter should use relevant layout (page, post, full-width)
- Run `jekyll serve -w` to preview changes locally