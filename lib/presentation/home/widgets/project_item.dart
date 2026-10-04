import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/widgets/outlined_button_custom.dart';
import 'package:portfolio/utilities/project_model.dart';
import 'package:portfolio/utilities/strings.dart';

class ProjectItem extends StatelessComponent {
  final ProjectModel project;
  final bool reversed;
  final bool lazy;

  const ProjectItem({
    super.key,
    required this.project,
    this.reversed = false,
    this.lazy = true,
  });

  @override
  Component build(BuildContext context) {
    return article(classes: reversed ? 'project reversed' : 'project', [
      div(classes: 'project-info', [
        div(classes: 'project-info-inner', [
          div(classes: 'project-title', [
            img(src: project.logo, alt: '', width: 60, height: 60),
            h3([.text(project.name)]),
          ]),
          span(classes: 'pill', [.text(project.category)]),
          p(classes: 'project-desc', [.text(project.description)]),
          div(classes: 'store-buttons', [
            OutlinedButtonCustom(title: Strings.appStore, icon: 'apple', url: project.appStoreUrl),
            OutlinedButtonCustom(title: Strings.googlePlay, icon: 'google-play', url: project.playStoreUrl),
          ]),
        ]),
      ]),
      img(
        classes: 'project-mockup',
        src: project.images.first,
        alt: '${project.name} app screens',
        width: 1200,
        height: 1208,
        loading: lazy ? MediaLoading.lazy : null,
      ),
    ]);
  }
}
