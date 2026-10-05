// The entrypoint for the server environment, run once at build time to pre-render every page.
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'package:portfolio/app.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/strings.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      title: Strings.siteTitle,
      lang: 'en',
      meta: {
        'description': Strings.description,
        'theme-color': '#010623',
        'twitter:card': 'summary',
        'mobile-web-app-capable': 'yes',
        'apple-mobile-web-app-status-bar-style': 'black',
        'apple-mobile-web-app-title': Strings.title,
      },
      head: [
        // Link previews
        meta(attributes: {'property': 'og:type', 'content': 'website'}),
        meta(attributes: {'property': 'og:url', 'content': siteUrl}),
        meta(attributes: {'property': 'og:title', 'content': Strings.siteTitle}),
        meta(attributes: {'property': 'og:description', 'content': Strings.description}),
        meta(attributes: {'property': 'og:image', 'content': '${siteUrl}icons/Icon-512.png'}),
        link(rel: 'icon', type: 'image/png', href: 'icons/favicon.png'),
        link(rel: 'apple-touch-icon', href: 'icons/favicon.png'),
        link(rel: 'manifest', href: 'manifest.json'),
        link(rel: 'preload', as: 'font', type: 'font/ttf', href: 'fonts/neue-power/NeuePower-Ultra.ttf', attributes: {'crossorigin': ''}),
        link(rel: 'preload', as: 'font', type: 'font/ttf', href: 'fonts/poppins/Poppins-Regular.ttf', attributes: {'crossorigin': ''}),
        link(rel: 'stylesheet', href: 'styles.css'),
        // Picks the theme before the first paint and wires up the header's toggle button, shown once the landing is scrolled away.
        script(content: _themeScript),
        // Removes the service worker the Flutter build of this site registered.
        script(content: 'navigator.serviceWorker?.getRegistrations().then((rs) => rs.forEach((r) => r.unregister()));'),
      ],
      body: const App(),
    ),
  );
}

const _themeScript = '''
(() => {
  const root = document.documentElement;
  let saved;
  try { saved = localStorage.theme; } catch (_) {}
  root.dataset.theme = saved ?? (matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light');
  addEventListener('click', (e) => {
    if (!e.target.closest?.('.theme-toggle')) return;
    root.dataset.theme = root.dataset.theme === 'dark' ? 'light' : 'dark';
    try { localStorage.theme = root.dataset.theme; } catch (_) {}
  });
  // Lets the stylesheet reveal the toggle once at least half of the landing is scrolled away.
  addEventListener('DOMContentLoaded', () => {
    const landing = document.querySelector('.landing');
    if (!landing) return;
    const update = () => root.toggleAttribute('data-past-landing', scrollY > landing.offsetHeight / 2);
    addEventListener('scroll', update, { passive: true });
    update();
  });
})();
''';
