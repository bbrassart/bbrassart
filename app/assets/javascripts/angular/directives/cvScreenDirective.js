app.directive('cvscreen', ['mainService', '$window', function(mainService, $window) {

    ctrl = function() {
        var self = this;
        self.isShowing = false;
        self.experiences = [];
        self.tagColors = ["design", "pure", "js", "yui"];

        self.showExperiences = function(id) {
            mainService.getExperiences({id: id})
                .$promise.then(
                function(response) {
                    self.experiences = response;
                    self.isShowing = true;
                },
                function(err) {
                    self.error = err;
                    self.isShowing = false;
                }
            );
        };

        self.isBigScreen = function() {
            return $window.innerWidth > 568;
        };

        self.reduceCv = function() {
            self.isShowing = false;
        };

    };

    return {
        restrict: "E",
        scope: {},
        bindToController: true,
        controller: ctrl,
        controllerAs: 'vm',
        templateUrl: '_cvScreen.html'
    };
}]);
