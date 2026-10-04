import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/common/nav_tabs.dart';
import 'package:portfolio/presentation/widgets/logo.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class Header extends StatelessComponent {
  /// White background with dark logo and links, instead of the dark gradient.
  final bool light;

  const Header({
    super.key,
    this.light = false,
  });

  @override
  Component build(BuildContext context) {
    return header(classes: light ? 'header header-light' : 'header', [
      a(classes: 'header-logo', href: Routes.homeScreen, attributes: {'title': Strings.home}, [
        Logo(dark: light),
      ]),
      const NavTabs(),
    ]);
  }
}
