---
layout: post
author: zzq
date: 2019-10-08
lang: en
---

### Problem
Kramdown escapes backslash and ampersand like normal HTML instead of
preserving them in inline math, e.g.,

Input:
```
For example, $A = \begin{bmatrix}1 & 3 \\ 2 & 3 \\ 4 & 1\end{bmatrix}$.
```

Expected ouput:
```
<p>For example, $A = \begin{bmatrix}1 & 3 \\ 2 & 3 \\ 4 & 1\end{bmatrix}$.</p>
```

Actual output:
```
<p>For example, $A = \begin{bmatrix}1 &amp; 3 \ 2 &amp; 3 \ 4 &amp; 1\end{bmatrix}$.</p>
```

### Solution
Unknown. I opened an issue at
<https://github.com/gettalong/kramdown/issues/627> but no response
yet.
