var cv = {
  trigger: true,
  apiUrl: "/api/v1/experiences/",

  setInitialListeners: function() {
    var self = this;
    $('.triggerCv').on('click',  function() {
      year = event.currentTarget.dataset["hook"];
      if (self.trigger) {
        var request = $.get(self.apiUrl.concat(year));
        request.done(self.processAjax);
      }
      else {
        $('#showCv').html("");
      }
      self.trigger = !self.trigger;
    });
  },

  processAjax: function(data) {
    var html = ""
    html += `<p>Starting date: ${data[0].starting_date}; ending date: ${data[0].ending_date}</p>
            <img src=${data[0].company_logo} width=100px height=100px>
            <p><b>${data[0].title}</b> at ${data[0].company_name}</p>
            <p><b>${data[0].location}</b></p>
            <p><b>${data[0].description}</b></p>`
    $('#showCv').html("");
    $('#showCv').append(html);
  }
}
