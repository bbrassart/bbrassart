app.factory('blogApiService', [
  'apiService', function(apiService) {
    self.params = {};
    self.params.operator = 'blogs';
    self.params.id = '3';
    return {
      get: function() {
        blog = apiService.get(self.params);
        return blog;
      }
    }
  }
]);
