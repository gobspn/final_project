'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "79f57ce39722ba172c1874fb06690fe3",
"assets/assets/images/hiphop_00.png": "2c655b8086d6c8bffdcc9aa91a3533de",
"assets/assets/images/hiphop_01.png": "6b73f034e43c9a4e667a90c7166c4cee",
"assets/assets/images/hiphop_02.jpg": "60c6f723265a417ce9a699aee3f8f2f8",
"assets/assets/images/hiphop_03.jpg": "bcbb3e61605e1695b2b49ba78527fb88",
"assets/assets/images/hiphop_04.jpg": "a1243f76d88b66d747d9009d9223ba3c",
"assets/assets/images/hiphop_05.jpg": "f965115fafacd5b4dba66dafe9a078dc",
"assets/assets/images/hiphop_06.jpg": "508e0fbf38b878e98047893c3d9025c9",
"assets/assets/images/hiphop_07.jpg": "46ebd14b770b9e89a22c92b1f3b4abae",
"assets/assets/images/hiphop_08.jpg": "1e6cdc56b7caee24730832efa0b1a520",
"assets/assets/images/hiphop_09.jpg": "4a95790ea1e0e063b4dd0fd387acfea8",
"assets/assets/images/hiphop_10.jpg": "715827070b9d8661524a2da1183ed1d9",
"assets/assets/images/indie_00.jpg": "9adee69a6446900a5e7491c92fb63261",
"assets/assets/images/indie_01.jpg": "98a5ec7faf25d1e58e3e7f0af1b71aff",
"assets/assets/images/indie_02.jpg": "3f6e5c5233545c6af5af37272b7bc027",
"assets/assets/images/indie_03.jpg": "03ccf012ede98c4a51c8953c065b9e5b",
"assets/assets/images/indie_04.jpg": "9fb569702480e9b22fc480fea0ac8a11",
"assets/assets/images/indie_05.jpg": "e1d79766eb33fe2cc540181ffac545b0",
"assets/assets/images/indie_06.jpg": "4a956cd742074c4d331ab33fed32f100",
"assets/assets/images/indie_07.jpg": "e7b8356fde4a6f12853b9310f7c9c705",
"assets/assets/images/indie_08.jpg": "18d48deefead8e97de79eda30c1e8f4e",
"assets/assets/images/indie_09.jpg": "7cfe7713047318f21439b1a795096b2d",
"assets/assets/images/indie_10.jpg": "ef884c7be7d3e87258953e9752e69f09",
"assets/assets/images/pop_00.jpg": "352da002f079d1553ae834ddc5c62e72",
"assets/assets/images/pop_01.jpg": "a7732c7772d5eac704b4408a5954344c",
"assets/assets/images/pop_02.jpg": "94f3f1a6be52e93299268be13286b3cd",
"assets/assets/images/pop_03.jpg": "acf60f4c0788c4c71aaf97eded122481",
"assets/assets/images/pop_04.jpg": "9f42158f9bd876436d4d5192cf9771b5",
"assets/assets/images/pop_05.jpg": "8434c0bbdfc516bf208bad1a81f70cd1",
"assets/assets/images/pop_06.jpg": "4dd9fb397216549ca68e7727a9460b36",
"assets/assets/images/pop_07.jpg": "7224da8a360261c2c0c9b10708e547e9",
"assets/assets/images/pop_08.jpg": "2df8b1d86ce02a1839fa98b52069fa22",
"assets/assets/images/pop_09.jpg": "60740b5489d485945e8fbe3e78909670",
"assets/assets/images/pop_10.jpg": "1233e23de430c01b733a3e08668318d4",
"assets/assets/images/Rock_00.jpg": "361bf5ebc895a0ba797183941093973e",
"assets/assets/images/Rock_01.jpg": "2d9b70d816aa9fc39b589ffe0436dea8",
"assets/assets/images/Rock_02.jpg": "89d272749eddbe618403e793e7b46538",
"assets/assets/images/Rock_03.jpg": "740df99dd42418aa4587112e8ad1e59e",
"assets/assets/images/Rock_04.jpg": "357ed5227ccfbb0aef742fbd14b776c3",
"assets/assets/images/Rock_05.jpg": "15496c98066e9ca6624e63d049428a1a",
"assets/assets/images/Rock_06.jpg": "bc764892d9f46be60392e141a75680c7",
"assets/assets/images/Rock_07.jpg": "19785e1d83858d4458eb70753f7439bb",
"assets/assets/images/Rock_08.jpg": "7c4bbac4dbc79a716f87f0d461a91e4d",
"assets/assets/images/Rock_10.jpg": "f9cd44c8ad8ca771eabff9d8e5fb61b5",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "36090f27aea0bec01bde94790bac8997",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "62b9906717d7215a6ff4cc24efbd1b5c",
"canvaskit/canvaskit.wasm": "b179ba02b7a9f61ebc108f82c5a1ecdb",
"canvaskit/profiling/canvaskit.js": "3783918f48ef691e230156c251169480",
"canvaskit/profiling/canvaskit.wasm": "6d1b0fc1ec88c3110db88caa3393c580",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b7f753ac7389e5c7bb8ece4d17735f46",
"/": "b7f753ac7389e5c7bb8ece4d17735f46",
"main.dart.js": "26af0ffefcae4a61d5f1c826181b3f5e",
"manifest.json": "34d60a83ae929f39054f2ceeb6d9fc85",
"version.json": "1d188648d780692ac1de8dff01bb090b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
