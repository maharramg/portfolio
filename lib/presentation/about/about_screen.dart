import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/about/widgets/about_view.dart';
import 'package:portfolio/presentation/about/widgets/jobs_view.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';

class AboutScreen extends StatelessComponent {
  const AboutScreen({super.key});

  @override
  Component build(BuildContext context) {
    return const .fragment([
      Header(light: true),
      main_([
        AboutView(),
        JobsView(),
      ]),
      Footer(),
    ]);
  }
}
