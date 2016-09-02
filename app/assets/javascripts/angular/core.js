app = angular.module('myAngular',[
  'templates', 'ngAnimate', 'ngResource', 'ngSanitize', 'bsLoadingOverlay', 'bsLoadingOverlaySpinJs'
]).run(function(bsLoadingOverlayService) {
    bsLoadingOverlayService.setGlobalConfig({
        templateUrl: 'bsLoadingOverlaySpinJs',
        activeClass: 'loading-content'
    });
});
