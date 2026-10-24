/*
 * Build the table of contents of a post from its <h2>/<h3> headings.
 * The include `_includes/toc.html` is only rendered when a post sets
 * `toc: true` in its front matter; the block is hidden until this
 * script filled the list, so pages without JavaScript are unaffected.
 */
(function () {
  "use strict";

  function buildToc() {
    var container = document.getElementById("toc");
    var list = document.getElementById("toc-list");
    var content = document.getElementById("content");

    if (!container || !list || !content) {
      return;
    }

    var headings = Array.prototype.filter.call(
      content.querySelectorAll("h2, h3"),
      function (heading) {
        return heading.id !== "";
      }
    );

    /* A single heading is not worth a table of contents. */
    if (headings.length < 2) {
      return;
    }

    headings.forEach(function (heading) {
      var item = document.createElement("li");
      var link = document.createElement("a");

      link.href = "#" + heading.id;
      link.textContent = heading.textContent.trim();
      item.appendChild(link);

      if (heading.tagName === "H3") {
        item.classList.add("toc-h3");
      }

      list.appendChild(item);
    });

    container.hidden = false;
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", buildToc);
  } else {
    buildToc();
  }
})();