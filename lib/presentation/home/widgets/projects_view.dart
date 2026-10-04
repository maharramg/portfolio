import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/home/widgets/project_item.dart';
import 'package:portfolio/presentation/widgets/app_icon.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/routes.dart';
import 'package:portfolio/utilities/strings.dart';

class ProjectsView extends StatelessComponent {
  /// Shows only the first [limit] projects and a link to the rest. Null shows all of them.
  final int? limit;

  const ProjectsView({
    super.key,
    this.limit,
  });

  @override
  Component build(BuildContext context) {
    final limit = this.limit;
    final shown = limit == null ? projects : projects.take(limit).toList();

    return section(id: 'projects', classes: 'projects', [
      div(classes: 'section-title', [
        h2([.text(Strings.portfolio)]),
        p([.text(Strings.mobileApps)]),
      ]),
      div(classes: limit == null ? 'project-list project-list-all' : 'project-list', [
        for (final (index, project) in shown.indexed)
          if (limit != null && index == shown.length - 1)
            // The last project only peeks out from under a fade, as a teaser behind the link to the full list.
            div(classes: 'project-peek', [
              div(attributes: {'inert': ''}, [
                ProjectItem(project: project, reversed: index.isOdd),
              ]),
              div(classes: 'project-peek-fade', [
                a(classes: 'see-all', href: Routes.href(Routes.projectsScreen), [
                  .text(Strings.seeAll(projects.length)),
                  const AppIcon('chevron-right'),
                ]),
              ]),
            ])
          else
            // The first mockups are near the top of the page, so they are not worth deferring.
            ProjectItem(project: project, reversed: index.isOdd, lazy: index > 1),
      ]),
    ]);
  }
}
