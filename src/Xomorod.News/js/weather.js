/* where in the world are you? */
 function geolocationClick () {
     navigator.geolocation.watchPosition(function (position) {
        setWeatherProperties(position.coords.latitude + ',' + position.coords.longitude, '', true); //load weather using your lat/lng coordinates
      //  $('#geolocation').hide();
     }, function (error) {
         if (error.code === error.PERMISSION_DENIED) {
             var msg = 'your geo location is blocked. for turn on do step by step:\n\n' +
                 '1. in the top right, click the menu.\n' +
                 '2. click settings > show advanced settings.\n' +
                 '3. in the "privacy" section, click content settings.\n' +
                 '4. in the dialog that appears, scroll down to the "location" section.\n' +
                 '5. select "allow all sites to track your physical location"\n' +
                 '6. click manage exceptions if you want to remove permissions you gave before to specific sites.\n';

             alert(msg);
         } else {
             alert(error.message);
         }
     });
}

var app = angular.module('xomorodApp', []);

app.controller('weatherController', ['$scope', function ($scope) {
    
    if (navigator.geolocation) {
        var watchId = navigator.geolocation.watchPosition(function (position) {
            /* Does your browser support geolocation? */
            setWeatherProperties(position.coords.latitude + ',' + position.coords.longitude, '', true); //@params angular Scope, location, woeid, hidden or not ?
        },
            function (error) {
                if (error.code === error.PERMISSION_DENIED)
                    setWeatherProperties('Tehran, Iran', '', false, 'geo location is blocked!'); //@params angular Scope, location, woeid, hidden or not ?, msg

                navigator.geolocation.clearWatch(watchId);
            });
    } else {
        setWeatherProperties('Tehran, Iran', '', true, "Your device does not support geo locations!");
    }
}
]);

function setWeatherProperties(location, woeid, realPos, errMsg) {
    var appElement = document.querySelector('[ng-app=xomorodApp]');
    var appScope = angular.element(appElement).scope();

    $.simpleWeather({
        location: location,
        woeid: woeid,
        unit: 'c',
        success: function (weather) {
            appScope.$apply(function() {
                appScope.weather = weather;
                appScope.realPos = realPos;
                appScope.errMsg = errMsg;
            });
        },
        error: function (error) {
            appScope.$apply(function() {
                //scope.weather = weather;
                appScope.realPos = realPos;
                appScope.errMsg = errMsg;
            });
        }
    });
}