import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/widgets/app_icon.dart';
import 'package:portfolio/presentation/widgets/text_lines.dart';
import 'package:portfolio/utilities/strings.dart';

class LandingView extends StatelessComponent {
  const LandingView({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'landing', [
      div([
        p(classes: 'landing-hi', [.text(Strings.landing1)]),
        h1([
          ...textLines(Strings.landing2),
          span([.text(Strings.landing3)]),
          .text('.'),
        ]),
        p(classes: 'landing-desc', [.text(Strings.landing4)]),
      ]),
      a(
        classes: 'landing-arrow',
        href: '/#projects',
        attributes: {'title': Strings.scrollToProjects, 'aria-label': Strings.scrollToProjects},
        [const AppIcon('caret-down')],
      ),
    ]);
  }
}
