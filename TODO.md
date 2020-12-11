- feature: encode email to svg graph.

- optimize: handle newline in Chinese text converted to a space when
  markdown is rendered to HTML. If this issue is resolved, then we can
  write multiple lines for a paragraph in Chinese.

- features: tags, comments, "more".

+ infra: get rid of limited github-pages related stuff. After all we
  directly deploy the contents in ./_site to master branch so we don't
  have to stick to github-pages.

+ fix: better margin, padding layout.

+ fix: incorrect displaying of inline math formulas.
  Always use double $ even in inline mode; leave displayed mode
  surrounded with blank lines.

+ feature: auto publication list generation.
  I gave up jekyll-scholar eventually due to the limited flexibility
  of the customization to its bibliography's format. I found it more
  comfortable to build the publication list from a yaml file with
  BibTeX-like format.

+ optimize: remove unneeded whitespace generated in HTML. See
  https://shopify.github.io/liquid/basics/whitespace/

+ optimize: split contents into different files from index page.

+ fix: centerize menu.

+ devops: include gem versions in Gemfile and exclude Gemfile.lock
  from git.

  I forgot why to include gem versions thus I did not. I just add
  Gemfile.lock to gitignore file.
