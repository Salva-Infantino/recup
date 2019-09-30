// CECI EST MON SERVICE WORKER //
const staticAssets = ["/", "/style/style.css", "/imgs/blank.png", "/temp.html"];

// INSTALLATION
self.addEventListener("install", ev => {
  console.log("service worker est installé");
  // CACHING RESSOURCE STATIQUES
  ev.waitUntil(
    caches.open("static_v1").then(cache => {
      cache.addAll(staticAssets);
      console.log("ressources mises en cache");
    })
  );
});

// ACTIVATION
self.addEventListener("activate", ev => {
  console.log("Service Worker activé");
});

// FETCH
self.addEventListener("fetch", ev => {
  ev.respondWith(
    caches.match(ev.request).then(result => {
      return (
        result ||
        fetch(ev.request).catch(
          /*() =>
            ev.request.url.indexOf(".jpg") > -1 &&
            caches.match("/imgs/blank.png")
        )*/
          () => {
            if (ev.request.url.indexOf(".jpg") > -1)
              return caches.match("/imgs/blank.png");
            if (ev.request.url.indexOf(".html") > -1)
              return caches.match("/temp.html");
          }
        )
      );
    })
  );
});
