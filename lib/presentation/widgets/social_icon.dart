import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/widgets/app_icon.dart';

class SocialIcon extends StatelessComponent {
  final String icon;
  final String url;
  final String label;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.url,
    required this.label,
  });

  @override
  Component build(BuildContext context) {
    return a(href: url, target: Target.blank, attributes: {'rel': 'noopener', 'title': label, 'aria-label': label}, [
      AppIcon(icon),
    ]);
  }
}
