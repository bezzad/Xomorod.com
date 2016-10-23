var app = angular.module(
            'xomorodApp', // Name of our application
            [
                // Dependencies:
                'ngCookies',
                'pascalprecht.translate' // angular-translate
            ]
         );

app.config(['$translateProvider', function ($translateProvider) {
    $translateProvider.useUrlLoader('/api/translate/login/');
    $translateProvider.useSanitizeValueStrategy(null);
}]);

app.controller('bodyController',
    ['$scope', '$cookieStore', '$translate',
        function ($scope, $cookieStore, $translate) {
            var lang = $cookieStore.get('Xomorod_LANGUAGE') || 'en';
            $translate.use(lang);
        }]);