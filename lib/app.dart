import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/project_item.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final itemKey = GlobalKey();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Row(
      children: [
        _buildNavigation(),
        const VerticalDivider(),
        Expanded(
          child: ListView(
            children: [
              _buildContentView(),
              _buildProjectsView(),
              // _buildAboutView(),
              // _buildContactView(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProjectsView() {
    return ListView(
      shrinkWrap: true,
      children: const [
        ProjectItem(
          projectImg: 'assets/images/tezibu.png',
          projectName: 'Tezibu Client',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/courier.png',
          projectName: 'Tezibu Courier',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/partner.png',
          projectName: 'Tezibu Partner',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/rahat.webp',
          projectName: 'Rahat Kart',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/wibty.png',
          projectName: 'Wibty',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/flo.png',
          projectName: 'Flo',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/dentistore.png',
          projectName: 'Denti Store',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/lilac.png',
          projectName: 'Lilac',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/bouquet.webp',
          projectName: 'Bouquet',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/chic-chic.webp',
          projectName: 'Chic-Chic',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/cinemaplaza.webp',
          projectName: 'CinemaPlaza',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/gutenberg.webp',
          projectName: 'Gutenberg',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/leplaisir.png',
          projectName: 'Leplaisir',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/parashut.webp',
          projectName: 'Parashut',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/nata.png',
          projectName: 'Nata',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        ProjectItem(
          projectImg: 'assets/images/inloyapos.webp',
          projectName: 'Inloya POS',
          projectDesc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
      ],
    );
  }

  Widget _buildAboutView() {
    return Container();
  }

  Widget _buildContactView() {
    return Container();
  }

  Widget _buildContentView() {
    return ListView(
      shrinkWrap: true,
      controller: _scrollController,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            height: MediaQuery.of(context).size.height - 100,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Hi, \nMy name is Maharram Guliyev and this is what I do',
                  style: size32weight700.copyWith(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -2,
                  ),
                ),
                Text(
                  'WELCOME TO MY ONLINE PORTFOLIO AND CV',
                  style: size32weight700.copyWith(color: Colors.white),
                ),
                Text(
                  'I am an experienced mobile app developer who has a track record of success creating apps that are both well-received and commercially viable.',
                  style: size20weight700.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavigation() {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (i) {
        setState(() {
          _selectedIndex = i;
        });

        switch (_selectedIndex) {
          case 0:
            _scrollController.animateTo(0, curve: Curves.easeOut, duration: const Duration(milliseconds: 500));
            break;
          case 1:
            _scrollController.animateTo(200, curve: Curves.easeOut, duration: const Duration(milliseconds: 500));
            break;
          case 2:
            _scrollController.animateTo(400, curve: Curves.easeOut, duration: const Duration(milliseconds: 500));
            break;
          case 3:
            _scrollController.animateTo(600, curve: Curves.easeOut, duration: const Duration(milliseconds: 500));
            break;
          default:
            _scrollController.animateTo(0, curve: Curves.easeOut, duration: const Duration(milliseconds: 500));
        }
      },
      labelType: NavigationRailLabelType.all,
      backgroundColor: scaffoldBackgroundColor,
      selectedLabelTextStyle: const TextStyle(
        color: Colors.orangeAccent,
        fontSize: 14,
        letterSpacing: 1,
        decorationThickness: 2.0,
      ),
      unselectedLabelTextStyle: const TextStyle(
        fontSize: 13,
        letterSpacing: 0.8,
      ),
      groupAlignment: 0.0,
      destinations: const [
        NavigationRailDestination(
          icon: SizedBox.shrink(),
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text("Home"),
            ),
          ),
        ),
        NavigationRailDestination(
          icon: SizedBox.shrink(),
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text("Projects"),
            ),
          ),
        ),
        NavigationRailDestination(
          icon: SizedBox.shrink(),
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text("About"),
            ),
          ),
        ),
        NavigationRailDestination(
          icon: SizedBox.shrink(),
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text("Get in touch"),
            ),
          ),
        ),
      ],
    );
  }
}
