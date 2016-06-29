var socialMedia = {
  setInitialListeners: function() {
    $('#triggerTwitter, #triggerInstagram').on('click',  function() {
        $('#showTwitter, #showInstagram').toggle();
    });
  }
};