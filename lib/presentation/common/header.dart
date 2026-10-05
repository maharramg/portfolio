import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/common/nav_tabs.dart';
import 'package:portfolio/presentation/widgets/app_icon.dart';
import 'package:portfolio/presentation/widgets/logo.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class Header extends StatelessComponent {
  /// Plain background with dark logo and links, instead of the dark gradient. Follows the theme.
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
      div(classes: 'header-actions', [
        const NavTabs(),
        // Handled by the script in the document head, see `main.server.dart`.
        button(classes: 'theme-toggle', type: ButtonType.button, attributes: {'title': Strings.toggleTheme, 'aria-label': Strings.toggleTheme}, [
          const AppIcon('moon only-light'),
          const AppIcon('sun only-dark'),
        ]),
      ]),
    ]);
  }
}
