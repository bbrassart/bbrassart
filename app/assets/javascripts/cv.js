var cv = {
  trigger: true,
  apiUrl: "/api/v1/experiences/",

  setInitialListeners: function() {
    var self = this;

    $('.triggerCv').on('click',  function() {
      debugger;
      year = this.dataset["hook"];
      self.launchAjax(year);
    });
  },

  launchAjax: function(index) {
    var self = this;
    $.ajax({
      type: "get",
      url: self.apiUrl.concat(index),
      context: self,
      success: self.processAjax
    });
  },

  processAjax: function(data) {
    var self = this;
    var html = "";
    data.forEach(function(data) {
      html += self.buildMetaBody(data);
      html += self.buildBody(data);
      html += self.buildLocation(data);
      html += self.buildDates(data);
      html += self.buildLogo(data);
      html += self.buildTags(data.tags);
      html += `<br><br>`
    });
    $('#showCv').fadeOut("slow");
    setTimeout(function(){
      $('#showCv').html("");
      $('#reduceCv').removeClass('hidden');
      $('#showCv').append(html);
      $('#showCv').fadeIn("slow");
      $("#limitCv").animate({
        height: $("#showCv").height()
      },"slow");
     }, 400);

  },

  buildMetaBody: function(data) {
    return `</div><div class="xp-col pure-u-md-1-2 pure-u-sm-1-1">
    <p><b>${data.title}</b> at ${data.company_name}</p>`
  },

  buildBody: function(data) {
    var html = `${data.description}`;
    html += `</div>`;
    return html;
  },

  buildDates: function(data) {
    return `<div class="pure-u-md-1-2"><p>Starting date: ${data.starting_date}</p>
    <p>Ending date: ${data.ending_date}</p></div>`
  },

  buildLocation: function(data) {
    return `<div class="xp-col pure-u-md-1-2 pure-u-sm-1-1"><p><b>${data.location}</b></p>`
  },

  buildLogo: function(data) {
    return `<div class="pure-u-md-1-2"><img src=${data.company_logo} class="xp-logo" height=100px></div>`
  },

  buildTags: function(tags) {
    var tagColors = ["design", "pure", "js", "yui"];
    var html = "<br><br>";
    tags.forEach(function(tag, index) {
      var color = tagColors[index];
      html += `<span class="post-category post-category-${color}">${tag}</span>`
    })
    html += `</div>`
    return html;
  }
}

var reduceCv = {
  setInitialListeners: function() {
    $('#reduceCv').on('click', function() {
      setTimeout(function(){ $('#showCv').html(""); }, 400);
      $('#showCv').fadeOut("slow");
      $("#limitCv").animate({
        height: 0
      },"slow");
      $(this).addClass('hidden');
    })
  }
}
