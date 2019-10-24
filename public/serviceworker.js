var CACHE_NAME = 'partcaller-cache-v0.2.1';
var urlsToCache = [
    './favicon.ico',
	'./main.js',
	'./components/jsqrcode/src/bmparser.js',
	'./components/jsqrcode/src/datamask.js',
	'./components/jsqrcode/src/test.html',
	'./components/jsqrcode/src/decoder.js',
	'./components/jsqrcode/src/formatinf.js',
	'./components/jsqrcode/src/grid.js',
	'./components/jsqrcode/src/rsdecoder.js',
	'./components/jsqrcode/src/qr_packed.js',
	'./components/jsqrcode/src/bitmat.js',
	'./components/jsqrcode/src/alignpat.js',
	'./components/jsqrcode/src/detector.js',
	'./components/jsqrcode/src/gf256.js',
	'./components/jsqrcode/src/version.js',
	'./components/jsqrcode/src/gf256poly.js',
	'./components/jsqrcode/src/databr.js',
	'./components/jsqrcode/src/errorlevel.js',
	'./components/jsqrcode/src/qrcode.js',
	'./components/jsqrcode/src/findpat.js',
	'./components/jsqrcode/src/datablock.js',
	'./App.vue',
	'./manifest.json',
	'./serviceworker.js',
	'./assets/icons/icon-144x144.png',
	'./assets/icons/icon-512x512.png',
	'./assets/icons/icon-192x192.png',
	'./assets/svg/camera.svg',
	'./index.html',
];
var dummy = [];

self.addEventListener('install', function(event) {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(function(cache) {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
  );
});

addEventListener('fetch', function(event) {
  event.respondWith(                                            // doesn't catch CACHE_CONTAINING_ERROR_MESSAGES
    caches.match(event.request)
      .then(function(response) {
        if (response) {
          return response;                                      // if valid response is found in cache return it
        } else {
          return fetch(event.request)                           // fetch from internet
          .then(function(res) {
            return caches.open(CACHE_NAME)
              .then(function(cache) {
                cache.put(event.request.url, res.clone());      // save the response for future
                return res;                                     // return the fetched data
              })
          })
          .catch(function(err) {                                // fallback mechanism
            return caches.open('CACHE_CONTAINING_ERROR_MESSAGES')
              .then(function(cache) {
                return cache.match('/offline.html');
              });
          });
        }
      })
  );
});

