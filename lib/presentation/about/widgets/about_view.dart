import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/widgets/outlined_button_custom.dart';
import 'package:portfolio/presentation/widgets/text_lines.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/strings.dart';

class AboutView extends StatelessComponent {
  const AboutView({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'about', [
      div(classes: 'about-text', [
        h1(textLines(Strings.aboutTitle)),
        p([.text(Strings.aboutDesc)]),
        const OutlinedButtonCustom(title: Strings.resume, url: resumeUrl),
      ]),
      img(classes: 'about-photo', src: Strings.profileImage, alt: Strings.title, width: 1200, height: 1214),
    ]);
  }
}
