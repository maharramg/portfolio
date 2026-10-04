import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/utilities/strings.dart';

/// The monogram and wordmark. Its size comes from the `--logo-height` CSS variable of the surrounding section.
class Logo extends StatelessComponent {
  final bool dark;

  const Logo({
    super.key,
    this.dark = false,
  });

  @override
  Component build(BuildContext context) {
    return span(classes: 'logo', [
      img(classes: 'logo-mark', src: dark ? Strings.mgIcon : Strings.mgIconWhite, alt: '', width: 2000, height: 2000),
      img(classes: 'logo-word', src: dark ? Strings.mainIconDark : Strings.mainIconLight, alt: Strings.title, width: 540, height: 204),
    ]);
  }
}
