app.directive('githubscreen', ['mainService', '$window', function(mainService, $window) {

    ctrl = function() {
        var self = this;
        self.githubProjects = [];
        self.buttonText = "See my profile";
        self.isShowing = false;

        self.isDesktop = function() {
            return $window.innerWidth > 558;
        };

        self.performRequest = function() {
            mainService.getGithub()
                .$promise.then(
                function(response) {
                    self.githubProjects = response;
                    self.isShowing = true;
                    self.buttonText = "Make me smaller";
                },
                function(err) {
                    self.error = err;
                    self.isShowing = false;
                }
            );
        };

        self.toggleGithub = function() {
            if (self.isShowing) {
                self.isShowing = false;
                self.buttonText = "See my profile";
            } else if (!self.isShowing) {
                if (self.githubProjects.length > 0) {
                    self.isShowing = true;
                    self.buttonText = "Make me smaller";
                }
                else {
                    self.performRequest();
                }
            }
        };

    };

    return {
        restrict: "E",
        scope: {},
        bindToController: true,
        controller: ctrl,
        controllerAs: 'vm',
        templateUrl: '_githubScreen.html'
    };
}]);
