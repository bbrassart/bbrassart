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
      window.location.href="#blog";
    });


    $('body').on('click', '#triggerNextBlog', function() {
      var index = this.dataset["hook"];
      var currentIndex = parseInt(index) + 1;
      self.launchAjax(currentIndex);
      window.location.href="#blog";
    });

    $('body').on('click', '#triggerRevealText', function() {
      $('#revealText').removeClass('hidden');
      $('#makeMeSmallerDiv').removeClass('hidden');
      $('#triggerRevealText').addClass('hidden');
      window.location.href="#blog";
    });

    $('body').on('click', '#makeSmallerText', function() {
      window.location.href="#blog";
      $('#revealText').addClass('hidden');
      $('#makeMeSmallerDiv').addClass('hidden');
      $('#triggerRevealText').removeClass('hidden');

    });
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

  buildTag: function(tag) {
    var tagColors = ["design", "pure", "js", "yui"];
    var color = tagColors[Math.floor(Math.random() * tagColors.length)];
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
    <div id="makeMeSmallerDiv" class="is-center hidden"><button class="pure-button pure-button-primary"
    id="makeSmallerText">Make me smaller</button></div></section>`
  },

  buildButtons: function(data) {
    if (data.currentIndex == 3) {
      return `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerPreviousBlog"
      data-hook="${data.currentIndex}"><i class="fa fa-step-backward"></i>
      Previous post</button>
      </div>`
    } else if (data.currentIndex == 0) {
      return `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerNextBlog"
      data-hook="${data.currentIndex}">
      Next post <i class="fa fa-step-forward"></i></button>
      </div>`
    } else {
      return `<div class="is-center">
      <button class="pure-button pure-button-primary" id="triggerPreviousBlog"
      data-hook="${data.currentIndex}"><i class="fa fa-step-backward"></i>
      Previous post</button>
      <button class="pure-button pure-button-primary" id="triggerNextBlog"
      data-hook="${data.currentIndex}">
      Next post <i class="fa fa-step-forward"></i></button></div>`
    }
  },

  processAjax: function(data) {
    var self = this;
    var html = "";
    html += this.buildHeader(data);
    html += this.buildDate(data);
    html += this.buildPostTitle(data);
    data.tags.forEach(function(tag) {
      html += self.buildTag(tag);
    });

    html += this.buildIntro(data);
    html += this.buildText(data);
    html += this.buildButtons(data);
    $('#showBlog').html("");
    $('#showBlog').append(html);
  }
}