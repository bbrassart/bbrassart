app.factory('apiService', ['$resource',function($resource) {
  var response;
  var baseUrl = "/api/v1/:operator/:id";
  response = $resource(
    baseUrl, {operator: '@operator', id: '@id'},
    {
      get: {
        method: 'GET',
        isArray: false
      }
    }
  );
  return response;
}]);
