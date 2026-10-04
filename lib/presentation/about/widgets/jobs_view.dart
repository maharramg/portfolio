import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/about/widgets/job_item.dart';
import 'package:portfolio/utilities/job_model.dart';
import 'package:portfolio/utilities/strings.dart';

class JobsView extends StatelessComponent {
  const JobsView({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'jobs', [
      h2(classes: 'jobs-title', [.text(Strings.workExperience)]),
      for (final job in jobs) JobItem(job: job),
    ]);
  }
}
