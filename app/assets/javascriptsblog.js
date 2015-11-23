var blog = {
  apiUrl: "/api/v1/blogs/",

  setInitialListeners: function() {

    var self = this;
    $('#triggerPreviousBlog').on('click',  function() {
      index = event.currentTarget.dataset["hook"];
      currentIndex = index - 1;
      var request = $.get(self.apiUrl.concat(currentIndex));
      request.done(self.processAjax);
    });
    $('#triggerNextBlog').on('click',  function() {
      index = event.currentTarget.dataset["hook"];
      currentIndex = index + 1;
      var request = $.get(self.apiUrl.concat(currentIndex));
      request.done(self.processAjax);
    });
  },

  processAjax: function(data) {
    var html = "";
    html += `<section class="post"><header class="post-header">
        <img class="post-avatar" alt="Baptiste's avatar"
        height="48" width="48" src="${data.author_logo}">
        <h2 class="post-title">${data.title}</h2><p class="post-meta">
        By <a class="post-author" href="#">${data.author}</a> under`
        data.tags.forEach(function(tag) {
          html += `<a class="post-category post-category-design" href="#">${tag}</a>`
        })
    html += `</p></header><div class="post-description"><div class="post-images pure-g">
        <div class="pure-u-1 pure-u-md-1-2"><img alt="${data.image_caption}"
        class="pure-img-responsive" src="${data.image}">
        </div></div><p>${data.text}</p></div></section><br><br>`
        debugger;
    if (data.currentIndex == 1) {
      html += `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerPreviousBlog"
      data-hook="${data.currentIndex}" data-total="2"><i class="fa fa-step-backward"></i>
      Previous post</button>
      </div>`
    } else if (data.currentIndex == 0) {
      html += `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerNextBlog"
      data-hook="${data.currentIndex}" data-total="2">
      Next post <i class="fa fa-forward"></i></button>
      </div>`
    } else {
      html += `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerNextBlog"
      data-hook="${data.index}" data-total="2">
      Next post<i class="fa fa-forward"></i></button>
      </div><div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerPreviousBlog"
      data-hook="${data.index}" data-total="2"><i class="fa fa-step-backward"></i>
      Previous post</button></div>`
    }
    $('#showBlog').html("");
    $('#showBlog').append(html);
  }

}
