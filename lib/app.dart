import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:portfolio/presentation/about/about_screen.dart';
import 'package:portfolio/presentation/home/all_projects_screen.dart';
import 'package:portfolio/presentation/home/home_screen.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(path: Routes.homeScreen, title: Strings.siteTitle, builder: (context, state) => const HomeScreen()),
        Route(path: Routes.aboutScreen, title: '${Strings.tabAbout} | ${Strings.title}', builder: (context, state) => const AboutScreen()),
        Route(path: Routes.projectsScreen, title: '${Strings.portfolio} | ${Strings.title}', builder: (context, state) => const AllProjectsScreen()),
      ],
    );
  }
}
