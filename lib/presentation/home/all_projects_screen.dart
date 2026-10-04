import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/common/footer.dart';
import 'package:portfolio/presentation/common/header.dart';
import 'package:portfolio/presentation/home/widgets/projects_view.dart';

class AllProjectsScreen extends StatelessComponent {
  const AllProjectsScreen({super.key});

  @override
  Component build(BuildContext context) {
    return const .fragment([
      Header(),
      main_([
        ProjectsView(),
      ]),
      Footer(),
    ]);
  }
}
