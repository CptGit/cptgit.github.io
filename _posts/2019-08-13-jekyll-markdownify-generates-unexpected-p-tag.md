---
layout: post
author: zzq
date: 2019-08-05
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

**版权声明**：

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="知识共享许可协议" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />本作品采用<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议</a>进行许可。
