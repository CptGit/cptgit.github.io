- devops: include gem versions in Gemfile and exclude Gemfile.lock
  from git

- feature: encode email to svg graph

- feature: use BibTeX to list publications (jekyll-scholar)

- fix: centerize menu

- optimize: split contents into different files from index page.

- optimize: handle newline in Chinese text converted to a space when
  markdown is rendered to HTML. If this issue is resolved, then we can
  write multiple lines for a paragraph in Chinese.

- optimize: remove unneeded whitespace generated in HTML. See
  https://shopify.github.io/liquid/basics/whitespace/

- features: tags, comments, "more"

+ infra: get rid of limited github-pages related stuff. After all we
  directly deploy the contents in ./_site to master branch so we don't
  have to stick to github-pages.

+ fix: better margin, padding layout

+ fix: incorrect displaying of inline math formulas.
  Always use double $ even in inline mode; leave displayed mode
  surrounded with blank lines.
