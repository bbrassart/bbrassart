app.factory ('mainService', ['blogApiService', function(blogApiService) {
  var self = this;
  self.blog = {};
  self.params = {};

  self.getBlog = function(id) {
    self.blog = blogApiService.get(id);
    return self.blog;
  };

  return self;
}]);
