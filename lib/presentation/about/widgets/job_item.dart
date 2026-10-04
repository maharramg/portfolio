import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/utilities/job_model.dart';

class JobItem extends StatelessComponent {
  final JobModel job;

  const JobItem({
    super.key,
    required this.job,
  });

  @override
  Component build(BuildContext context) {
    return article(classes: 'job', [
      div(classes: 'job-left', [
        h3([.text(job.companyName)]),
        p(classes: 'job-dates', [.text(job.dates)]),
      ]),
      div(classes: 'job-right', [
        p(classes: 'job-location', [.text(job.location)]),
        ul(classes: 'job-desc', [
          // Each line of the description starts with its own bullet character; the list draws them instead.
          for (final line in job.description.split('\n')) li([span([.text(line.replaceFirst(RegExp(r'^•\s*'), ''))])]),
        ]),
      ]),
    ]);
  }
}
