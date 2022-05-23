(function() {
'use strict';

angular.module('qrScanner', ["ng"])
.directive('qrScanner', ['$interval', '$window', function($interval, $window) {
  return {
    restrict: 'E',
    scope: {
      ngSuccess: '&ngSuccess',
      ngError: '&ngError',
      ngVideoError: '&ngVideoError',
      control: '='
    },
	templateUrl: 'qrscanner/qr-scanner.html',
    link: function(scope, element, attrs) {

      window.URL = window.URL || window.webkitURL || window.mozURL || window.msURL;

      var height = attrs.height || 300;
      var width = attrs.width || 250;

	    var cameraList = [];
	    var cameraIdx = 0;

      var video = $window.document.getElementById('qr-video');
      video.setAttribute('width', width);
      video.setAttribute('height', height);
      video.setAttribute('style', '-moz-transform:rotateY(-180deg);-webkit-transform:rotateY(-180deg);transform:rotateY(-180deg);');
      var canvas = $window.document.getElementById('qr-canvas');
      canvas.setAttribute('width', width);
      canvas.setAttribute('height', height);
      canvas.setAttribute('style', 'display:none;');

      var context = canvas.getContext('2d');
      var stopScan;

      var scan = function() {
        if ($window.localMediaStream) {
          context.drawImage(video, 0, 0, 307,250);
          try {
            qrcode.decode();
          } catch(e) {
            scope.ngError({error: e});
          }
        }
      }

      var successCallback = function(stream) {
        video.src = (window.URL && window.URL.createObjectURL(stream)) || stream;
        $window.localMediaStream = stream;

        scope.video = video;
        video.play();
        stopScan = $interval(scan, 500);
      }

      qrcode.callback = function(data) {
        scope.ngSuccess({data: data});
      };

      element.bind('$destroy', function() {
        if ($window.localMediaStream) {
          $window.localMediaStream.stop();
        }
        if (stopScan) {
          $interval.cancel(stopScan);
        }
      });

	  function startCameraWithId(options) {
		// Call the getUserMedia method with our callback functions

        if (navigator.getUserMedia && options) {
          navigator.getUserMedia({video: options, "audio": false}, successCallback, function(e) {
            scope.ngVideoError({error: e});
          });
        } else if (navigator.webkitGetUserMedia && options) {
          navigator.webkitGetUserMedia({video: options, "audio": false}, successCallback, function(e) {
            scope.ngVideoError({error: e});
          });
        } else if (navigator.mozGetUserMedia && options) {
          navigator.mozGetUserMedia({video: options, "audio": false}, successCallback, function(e) {
            scope.ngVideoError({error: e});
          });
        } else if (navigator.msGetUserMedia && options) {
          navigator.msGetUserMedia({video: options, "audio": false}, successCallback, function(e) {
            scope.ngVideoError({error: e});
          });
        } else {
          scope.ngVideoError({error: 'Native web camera streaming (getUserMedia) not supported in this browser.'});
        }
	  }

	  navigator.mediaDevices.enumerateDevices()
		.then(function(devices) {
      var options = true;
		  devices.forEach(function(device) {
			if (device.kind == "videoinput") {
        if (device.label.toLowerCase().search("back") > -1)
					options={'deviceId': {'exact':device.deviceId}, 'facingMode':'environment'} ;
			}
		  });
		  startCameraWithId(options);
		})
		.catch(function(err) {
		  console.log(err.name + ": " + err.message);
		});
    }
  }
}]);
})();
