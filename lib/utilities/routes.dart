class Routes {
  static const homeScreen = '/';
  static const aboutScreen = '/about';
  static const projectsScreen = '/projects';

  // Each page is published as a folder with its own index.html, so links end in a slash to skip the host's redirect.
  static String href(String route) => route == homeScreen ? route : '$route/';
}
