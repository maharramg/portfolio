import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/widgets/app_icon.dart';

/// A link styled as an outlined button. Without a [url] it is shown faded and cannot be clicked.
class OutlinedButtonCustom extends StatelessComponent {
  final String title;
  final String? url;
  final String? icon;

  const OutlinedButtonCustom({
    super.key,
    required this.title,
    required this.url,
    this.icon,
  });

  @override
  Component build(BuildContext context) {
    final children = [
      if (icon != null) AppIcon(icon!),
      Component.text(title),
    ];

    final url = this.url;
    if (url == null || url.isEmpty) {
      return span(classes: 'btn disabled', attributes: {'aria-disabled': 'true'}, children);
    }

    return a(classes: 'btn', href: url, target: Target.blank, attributes: {'rel': 'noopener'}, children);
  }
}
