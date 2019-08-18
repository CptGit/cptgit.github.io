---
layout: post
author: zzq
date: 2019-08-13
lang: en
---

### Problem
Jekyll's markdownify filter generates unexpected `<p></p>` tag, e.g.,
{% raw %}
```
{% assign text = "hello" %}
{{ text | markdownify }}
```
{% endraw %}
We expect to see `hello` but jekyll ends with `<p>hello</p>`.

### Brutal Solution
Use {% raw %}`{{ text | markdownify | remove: '<p>' | remove: '</p>' }}`{% endraw %}.

### Helpful Links
<https://github.com/jekyll/jekyll/issues/3571>
