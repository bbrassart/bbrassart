var cv = {
  trigger: true,

  setInitialListeners: function() {
    var self = this;
    $('#triggerGithub').on('click',  function() {
      if (self.trigger) {
        var request = $.get(self.apiUrl);
        request.done(self.processAjax);
      }
      else {
        $('#showGithub').html("");
        $('#triggerGithub').text(`See my profile`);
      }
      self.trigger = !self.trigger;
    });
  },
}
