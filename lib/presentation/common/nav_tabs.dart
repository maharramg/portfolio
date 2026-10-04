import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

/// The Work / About / Contact links shared by the header and the footer.
class NavTabs extends StatelessComponent {
  const NavTabs({super.key});

  @override
  Component build(BuildContext context) {
    // Pages are pre-rendered at "/about" but may be served at "/about/".
    final path = context.url.length > 1 && context.url.endsWith('/') ? context.url.substring(0, context.url.length - 1) : context.url;

    return nav(classes: 'tabs', [
      a(classes: path == Routes.homeScreen ? 'active' : null, href: Routes.href(Routes.homeScreen), [.text(Strings.tabWork)]),
      a(classes: path == Routes.aboutScreen ? 'active' : null, href: Routes.href(Routes.aboutScreen), [.text(Strings.tabAbout)]),
      // The document's base is "/", so a bare "#contact" would always lead to the home page.
      a(href: '${Routes.href(path)}#contact', [.text(Strings.tabContact)]),
    ]);
  }
}
