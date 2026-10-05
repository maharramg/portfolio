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
      // The dark logo sits on a surface that follows the theme, so its mark has a variant for each.
      if (dark) img(classes: 'logo-mark only-light', src: Strings.mgIcon, alt: '', width: 2000, height: 2000),
      img(classes: dark ? 'logo-mark only-dark' : 'logo-mark', src: Strings.mgIconWhite, alt: '', width: 2000, height: 2000),
      img(classes: 'logo-word', src: dark ? Strings.mainIconDark : Strings.mainIconLight, alt: Strings.title, width: 540, height: 204),
    ]);
  }
}
