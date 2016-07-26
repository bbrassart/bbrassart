app.directive('blogscreen', function() {

  ctrl = function() {
    var self = this;
    self.name = 'Baptiste angular';
  };

  return {
    restrict: "E",
    scope: {},
    bindToController: true,
    controller: ctrl,
    controllerAs: 'vm',
    template: '{{vm.name}}'
  };
});
