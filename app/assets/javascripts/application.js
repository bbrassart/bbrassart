// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function () {
  var listenToGithub = Object.create(github);
  listenToGithub.setInitialListeners();
  var listenToBlog = Object.create(blog);
  listenToBlog.buildFirstPost();
  listenToBlog.setInitialListeners();
  var listenToReduceCv = Object.create(reduceCv);
  listenToReduceCv.setInitialListeners();

  var listenToSocialMedia = Object.create(socialMedia);
  listenToSocialMedia.setInitialListeners();

  var listenToCV = Object.create(cv);
  listenToCV.setInitialListeners();

});
