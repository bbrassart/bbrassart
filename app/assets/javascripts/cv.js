var cv = {
  trigger: true,
  apiUrl: "/api/v1/experiences/",

  setInitialListeners: function() {
    var self = this;
    $('.triggerCv').on('click',  function() {
      year = event.currentTarget.dataset["hook"];
      var request = $.get(self.apiUrl.concat(year));
      request.done(self.processAjax);
    });
  },

  processAjax: function(data) {
    var tagColors = ["design", "pure", "js", "yui"];

    var html = "<br>"
    data.forEach(function(data) {
      html += `<p>Starting date: ${data.starting_date}</p>
      <p>Ending date: ${data.ending_date}</p>
      <img src=${data.company_logo} width=100px height=100px>
      <p><b>${data.title}</b> at ${data.company_name}</p>
      <p><b>${data.location}</b></p>
      <p><b>${data.description}</b></p>`
      data.tags.forEach(function(tag) {
        var color = tagColors[Math.floor(Math.random() * tagColors.length)];
        html += `<a class="post-category post-category-${color}">${tag}</a>`
      })
      html += `<br><br>`
    });
    $('#showCv').html("");
    $('#reduceCv').removeClass('hidden');
    $('#showCv').append(html);
  }
}

var reduceCv = {
  setInitialListeners: function() {
    $('#reduceCv').on('click', function() {
      $('#showCv').html('');
      $(this).addClass('hidden');
    })
  }
}
