import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:portfolio/presentation/common/contact_view.dart';
import 'package:portfolio/presentation/common/nav_tabs.dart';
import 'package:portfolio/presentation/widgets/logo.dart';
import 'package:portfolio/presentation/widgets/social_icon.dart';
import 'package:portfolio/utilities/app_constants.dart';
import 'package:portfolio/utilities/strings.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(id: 'contact', classes: 'footer', [
      const ContactView(),
      div(classes: 'footer-bottom', [
        div(classes: 'footer-top', [
          const Logo(),
          const NavTabs(),
        ]),
        hr(),
        div(classes: 'socials', [
          const SocialIcon(icon: 'github', url: githubUrl, label: 'GitHub'),
          const SocialIcon(icon: 'linkedin', url: linkedinUrl, label: 'LinkedIn'),
          const SocialIcon(icon: 'instagram', url: instagramUrl, label: 'Instagram'),
          const SocialIcon(icon: 'facebook', url: facebookUrl, label: 'Facebook'),
          const SocialIcon(icon: 'envelope', url: 'mailto:$emailAddress?subject=Portfolio', label: 'Email'),
        ]),
        p([.text(Strings.copyright)]),
      ]),
    ]);
  }
}
