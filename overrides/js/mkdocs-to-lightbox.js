Array.prototype.forEach.call(document.body.querySelectorAll('.md-content img:not(.footermatter-author)'), e => {
  let lightbox = document.createElement('a');
  lightbox.setAttribute('data-fslightbox', '');
  lightbox.setAttribute('href', e.src);
  lightbox.innerHTML = `<img src=${e.src}>`;
  e.parentNode.replaceChild(lightbox, e);
});
