'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "83e4162a25c5740a7ccc44ebf9f6ab8d",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "5855c69babd8beedb6a86e8bf84084b5",
"/": "5855c69babd8beedb6a86e8bf84084b5",
"main.dart.js": "c3738f29b8035de0f9386f1b995a992f",
"404.html": "5810cd80e379fb53c1b3944d91ecd7d3",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/favicon.png": "2fc87c02f41e43771ce323e0916e5070",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ecb86521be16cec044ee29910029c023",
"assets/AssetManifest.json": "5bcf794af36bc8b738c98df4f2dc5815",
"assets/NOTICES": "5ec2edadfbc37a631b894d0592c45e35",
"assets/FontManifest.json": "1d2cca69fe8356bf4890370cb217f04a",
"assets/AssetManifest.bin.json": "a37fffbb61ef31d6c201c44498f9a9d1",
"assets/Maharram_Guliyev_CV.pdf": "ab82ba1f1fff242c426091eb2e67926e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "50cbb8cb9a52ae59c21b1bfc7ddf0047",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "edc81364a86573a2415001d14bf46ca8",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "e7853d4fac211e642f2108ecd1f7876f",
"assets/fonts/MaterialIcons-Regular.otf": "3bd964c3b30398357ef81637ac1e17d8",
"assets/assets/images/logos/tezibu-partner.png": "5a30a16ae575033318c884a908fd6c23",
"assets/assets/images/logos/wibty.webp": "7d13738cd4ac6079e2fb3b8a794d62b8",
"assets/assets/images/logos/flo.webp": "8300901a788a8ea603a108349175792f",
"assets/assets/images/logos/tezibu.jpg": "e6273c8c8039bab8f21773aab25470de",
"assets/assets/images/logos/tezibu-courier.png": "1da81be038e4eca0e3367f3b15e6f320",
"assets/assets/images/logos/unityfood.webp": "d7da1edf03c60f3871220408a65c57a6",
"assets/assets/images/logos/tentony.webp": "8a9a4ed10ee639d7737b846fb77558ed",
"assets/assets/images/logos/tendopay.jpeg": "57ee6c685a9501d367944932081fa46e",
"assets/assets/images/logos/inloya.jpg": "60bc63b13e9fd8f56904bcdbc66a2704",
"assets/assets/images/logos/inloya-pos.webp": "038bd90a336a5026a342cb237ea7771e",
"assets/assets/images/logos/rahat.png": "d12294035a88a8e159a384e77cfb7957",
"assets/assets/images/logos/ra9.webp": "16fa2ca328afecbd0fe7ad160e3bb406",
"assets/assets/images/logos/esimafly.png": "1a675bcec8bd498c05ec97c0a7678280",
"assets/assets/images/logos/lilac.png": "5435dfc32e93d3a3a4094ad495ce3e2a",
"assets/assets/images/logos/bouquet.webp": "2290cebe6376a5f1cdfd23c1bb309167",
"assets/assets/images/logos/dentistore.webp": "9b721c45f83d7705fd9777063a05c948",
"assets/assets/images/logos/gunka.png": "2d3dac8938d7d96c91e0e4e825794cee",
"assets/assets/images/mockups/lilac-mockup.png": "a6a1e6a23ab5133f60767bdf97ae8710",
"assets/assets/images/mockups/esimafly-mockup.png": "6cf46837e5749263f82fcb7e189a6479",
"assets/assets/images/mockups/tezibu-mockup.png": "fe219b8d18442779fe3d0f435d497b8a",
"assets/assets/images/mockups/tendopay-mockup.png": "30aa223e640e2f54a23b81d78ae37e52",
"assets/assets/images/mockups/unityfood-mockup.png": "2594b7c9e518f9fb69fd4f2b1cb85e82",
"assets/assets/images/mockups/ra9-mockup.png": "c99cd9b5e2e78985cf2abce4bb3c2779",
"assets/assets/images/mockups/rahat-mockup.png": "e9105f28e385f7116b3ffc380804e0ef",
"assets/assets/images/mockups/flo-mockup.png": "2cef65aefa0167697dfa558249d46eb0",
"assets/assets/images/mockups/wibty-mockup.png": "6348f32c3fb3ff8b06d334cbb006d9cd",
"assets/assets/images/mockups/tezibu-courier-mockup.png": "39fb254fde70c277b09a50e5c8609208",
"assets/assets/images/mockups/tentony-mockup.png": "9052801eb79babc59dda59a59c6bff63",
"assets/assets/images/mockups/inloya-pos-mockup.png": "76f9b59f5c88e2eef3dc485913cce338",
"assets/assets/images/mockups/gunka-mockup.png": "89bc035b4d48ace9bf58e61eb9481b30",
"assets/assets/images/mockups/denti-store-mockup.png": "83489842b45af92ee56e04c2e4339548",
"assets/assets/images/mockups/tezibu-partner-mockup.png": "787a15a4f6b0a83bbe59840f1c0cd36b",
"assets/assets/images/mockups/bouquet-mockup.png": "6f55899a2bf0742a5a7f0483b9fc40e1",
"assets/assets/images/icons/main-icon-light.png": "5d2b98c4a55fcee53e9d919e3d4cf4a7",
"assets/assets/images/icons/main-icon-dark.png": "9047f58125d68118e9ebf9b4be112527",
"assets/assets/images/about1.png": "e92ebe1cf89f09455b6d9fd62600ac92",
"assets/assets/images/about.png": "504c9a40e90e0d065efb09a6772cb345",
"assets/assets/fonts/neue-power/NeuePower-Ultra.ttf": "94518335ea7fb83da1989eb9c5d08853",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/animations/chevron_down.json": "fe1556a61c23180c51311d8d10550330",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
