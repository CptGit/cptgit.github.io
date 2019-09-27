- optimize: remove unneeded whitespace generated in HTML. See
  https://shopify.github.io/liquid/basics/whitespace/

- features: tags, comments, "more"

- fix: incorrect displaying of inline math formulas
  An issue committed on GitHub for kramdown.

+ infra: get rid of limited github-pages related stuff. After all we
  directly deploy the contents in ./_site to master branch so we don't
  have to stick to github-pages.

+ fix: better margin, padding layout
