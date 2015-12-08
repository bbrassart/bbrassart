var blog = {
  apiUrl: "/api/v1/blogs/",
  counter: 0,

  launchAjax: function(index) {
    var self = this;
    $.ajax({
      type: "get",
      url: self.apiUrl.concat(index),
      context: self,
      success: self.processAjax
    });

  },

  buildFirstPost: function() {
    var self = this;
    this.launchAjax(3);
  },

  setInitialListeners: function() {
    var self = this;

    $('body').on('click', '#triggerPreviousBlog', function() {
      var index = this.dataset["hook"];
      var currentIndex = parseInt(index) - 1;
      self.launchAjax(currentIndex);
    });


    $('body').on('click', '#triggerNextBlog', function() {
      var index = this.dataset["hook"];
      var currentIndex = parseInt(index) + 1;
      self.launchAjax(currentIndex);
    });

    $('body').on('click', '#triggerRevealText', function() {
      $('#showBlog').fadeOut("slow");
      self.showMoreDelayedFadeIn();
    });

    $('body').on('click', '#makeSmallerText', function() {
      $('#showBlog').fadeOut("slow");
      self.smallerDelayedFadeIn();
    });
  },

  showMoreDelayedFadeIn: function() {
    setTimeout(function(){
      $('#showBlog').fadeIn("slow");
      $('#revealText').removeClass('hidden');
      $('#makeMeSmallerDiv').removeClass('hidden');
      $('#triggerRevealText').addClass('hidden');
      window.location.href="#blog";
     }, 400);
  },

  smallerDelayedFadeIn: function() {
    setTimeout(function(){
      $('#showBlog').fadeIn("slow");
      $('#revealText').addClass('hidden');
      $('#makeMeSmallerDiv').addClass('hidden');
      $('#triggerRevealText').removeClass('hidden');
      window.location.href="#blog";
     }, 400);
  },

  buildHeader: function(data) {
    return `<p>Post ${data.currentIndex + 1} out of 4</p>
      <section class="post"><header class="post-header">
      <img class="post-avatar" alt="Baptiste's avatar"
      height="48" width="48" src="${data.author_logo}">
      <h2 class="post-title">${data.title}</h2>`
  },

  buildPostTitle: function(data) {
    return `<p class="post-meta">
    By <a class="post-author" href="#">${data.author}</a> under `
  },

  buildTag: function(tag, index) {
    var tagColors = ["design", "pure", "js", "yui"];
    var color = tagColors[index];
    return `<a class="post-category post-category-${color}">${tag}</a>`
  },

  buildIntro: function(data) {
    var self = this;
    var html = ""
    html += `</p></header>
    <img alt="${data.image_caption}" class="first--image__post pure-img-responsive"
    src="${data.image}">${data.intro}`
    if ( $('#revealText').hasClass('hidden') || self.counter == 0) {
      html += `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerRevealText">Show me more</button>
      </div>`
      self.counter += 1;
    }
    return html;
  },

  buildDate: function(data) {
    return `<p class="post-meta">${data.date}</p>`
  },

  buildText: function(data) {
    return `<div id="revealText" class="hidden">${data.text}</div></div>
    <div id="makeMeSmallerDiv" class="is-center hidden"><div class="pure-u-1"><div class="is-center"><button class="pure-button pure-button-primary"
    id="makeSmallerText">Make me smaller</button><a href="/blog/${data.url}"><button class="pure-button pure-button-primary">
    Go to the page</button></a></div></div></section></div>`
  },

  buildButtons: function(data) {
    if (data.currentIndex == 3) {
      return `<div class="pure-u-1"><div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerPreviousBlog"
      data-hook="${data.currentIndex}"><i class="fa fa-step-backward"></i>
      Previous post</button>
      </div></div>`
    } else if (data.currentIndex == 0) {
      return `<div class="pure-u-1"><div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerNextBlog"
      data-hook="${data.currentIndex}">
      Next post <i class="fa fa-step-forward"></i></button>
      </div></div>`
    } else {
      return `<div class="pure-u-1"><div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerPreviousBlog"
      data-hook="${data.currentIndex}"><i class="fa fa-step-backward"></i>
      Previous post</button>
      <button class="pure-button pure-button-primary" id="triggerNextBlog"
      data-hook="${data.currentIndex}">
      Next post <i class="fa fa-step-forward"></i></button></div></div>`
    }
  },

  processAjax: function(data) {
    var self = this;
    var html = "";
    html += this.buildHeader(data);
    html += this.buildDate(data);
    html += this.buildPostTitle(data);
    data.tags.forEach(function(tag, index) {
      html += self.buildTag(tag, index);
    });
    html += this.buildIntro(data);
    html += this.buildText(data);
    html += this.buildButtons(data);

    $('#showBlog').fadeOut("slow");
    self.showBlogDelayedFadeIn(html);
    self.counter += 1;
  },

  showBlogDelayedFadeIn: function(html) {
    setTimeout(function(){
      $('#showBlog').html("");
      $('#showBlog').append(html);
      $('#showBlog').fadeIn("slow");
      if (!self.counter === 0) {
        window.location.href="#blog";
      }
     }, 400);
  }
}
