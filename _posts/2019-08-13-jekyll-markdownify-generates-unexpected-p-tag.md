---
layout: post
author: zzq
date: 2019-08-13
lang: zh-cn
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

---------------------------

**LICENSE**:

This work is built upon the materials on [MIT OCW](https://ocw.mit.edu/courses/mathematics/18-06sc-linear-algebra-fall-2011/index.htm).

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
