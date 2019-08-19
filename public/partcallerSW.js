var CACHE_NAME = 'partcaller-cache-v1';
var urlsToCache = [
  '/',
  '/index.html',
  '/controls.html',
  '/offline.html',
  '/assets/css/milligram.css',
  '/assets/css/app.css',
  '/assets/icons/icon-144x144.png',
  '/assets/pictures/favicon.png'
];

self.addEventListener('install', function(event) {
  // Perform install steps
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(function(cache) {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
  );
});

addEventListener('fetch', function(event) {
  event.respondWith(
    caches.match(event.request)
      .then(function(response) {
        if (response) {
          return response;     // if valid response is found in cache return it
        } else {
          return fetch(event.request)     //fetch from internet
          .then(function(res) {
            return caches.open(CACHE_NAME)
              .then(function(cache) {
                cache.put(event.request.url, res.clone());    //save the response for future
                return res;   // return the fetched data
              })
          })
          .catch(function(err) {       // fallback mechanism
            return caches.open(CACHE_CONTAINING_ERROR_MESSAGES)
              .then(function(cache) {
                return cache.match('/offline.html');
              });
          });
        }
      })
  );
});  

