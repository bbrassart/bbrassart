app.directive('blogscreen', ['mainService', function(mainService) {

  ctrl = function() {
    var self = this;
    self.blog = {};
    self.name = 'Baptiste angular';
    blog = mainService.getBlog(3);
    blog.$promise.then(function(data) {
      self.blog = data;
    });
  };

  return {
    restrict: "E",
    scope: {},
    bindToController: true,
    controller: ctrl,
    controllerAs: 'vm',
    templateUrl: '_blogScreen.html'
  };
}]);
