var app = angular.module('rssApp', []);

app.controller('newsController', ['$scope', '$http', '$sce', function ($scope, $http, $sce) {
    $http.get("api/news").success(function (response) {
        $scope.renderHtml = function (htmlCode) {
            return $sce.trustAsHtml(htmlCode);
        };
        $scope.news = response;
    }).error(function () {
        alert("an unexcepted error ocurred at newsController");
    });
}]);