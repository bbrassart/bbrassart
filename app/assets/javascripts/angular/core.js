var app = angular.module('myAngular',[
    'templates', 'ngAnimate', 'ngResource', 'ngSanitize', 'bsLoadingOverlay', 'bsLoadingOverlaySpinJs'
]).run(['bsLoadingOverlayService', function(bsLoadingOverlayService) {
    bsLoadingOverlayService.setGlobalConfig({
        templateUrl: 'bsLoadingOverlaySpinJs',
        activeClass: 'loading-content'
    });
}]);
