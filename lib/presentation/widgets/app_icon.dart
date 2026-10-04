import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// An icon from `web/images/icons/fa`, drawn in the current text colour. See `.icon` in `web/styles.css`.
class AppIcon extends StatelessComponent {
  final String name;

  const AppIcon(this.name, {super.key});

  @override
  Component build(BuildContext context) {
    return span(classes: 'icon icon-$name', attributes: {'aria-hidden': 'true'}, []);
  }
}
