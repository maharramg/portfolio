import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/home/widgets/landing_view.dart';
import 'package:portfolio/presentation/home/widgets/projects_view.dart';

class HomeScreen extends StatelessComponent {
  const HomeScreen({super.key});

  @override
  Component build(BuildContext context) {
    return const .fragment([
      Header(),
      main_([
        LandingView(),
        ProjectsView(limit: 5),
      ]),
      Footer(),
    ]);
  }
}
