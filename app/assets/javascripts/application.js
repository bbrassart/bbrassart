
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
//= require angular/angular
//= require angular-resource
//= require angular-animate
//= require angular-sanitize
//= require angular-loading-overlay-spinjs/dist/angular-loading-overlay-spinjs
//= require angular-loading-overlay
//= require spin-js
//= require angular-rails-templates
//= require_tree ./templates
//= require_tree .

(function() {
    $(document).on('ready page:load', function () {

        if ($("#comments").length != 0) {
            !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
            $('.header').addClass("blog--header");
        }
        mobileNavMenu.setInitialListeners();
        anchorAnimation.setInitialListeners();
        twttr.widgets.load();
    })
})();
