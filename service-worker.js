// service-worker.js

// Define the files to cache
const CACHE_NAME = 'my-cache-v1';
const urlsToCache = [
  '/',
  '/favicon.ico',
  'manifest.json'
];

// Install the service worker
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => cache.addAll(urlsToCache))
  );
});

// Activate the service worker
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.filter(cacheName => cacheName !== CACHE_NAME)
          .map(cacheName => caches.delete(cacheName))
      );
    })
  );
});

// Intercept fetch requests
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        if (response) {
          // Cache hit - return the cached response
          return response;
        }

        // Fetch the request from the network
        return fetch(event.request);
      })
  );
});
