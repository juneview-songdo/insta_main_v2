import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../../../main.dart';
import '../alert/view.dart';
import '../friends/view.dart';
import '../home/view.dart';
import '../profile/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),

      body:
      IndexedStack(
        index: _selectedIndex,
        children: [
          //////////////////////
          HomeView(),
          FriendsView(),
          Container().backgroundColor(Colors.yellow),
          AlertView(),
          ProfileView(),
          //////////////////////
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 25,
                  color:
                      Colors.black.withOpacity((_selectedIndex == 0) ? 0.7 : 0.3),
                ),
                label: "Feed"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    'assets/view/insta_main_v2/search.svg',
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity((_selectedIndex == 1) ? 0.7 : 0.3),
                      BlendMode.srcIn,
                    )),
                label: "Search"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    'assets/view/insta_main_v2/plus-square.svg',
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity((_selectedIndex == 2) ? 0.7 : 0.3),
                      BlendMode.srcIn,
                    )),
                label: "Upload"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                    'assets/view/insta_main_v2/heart.svg',
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity((_selectedIndex == 3) ? 0.7 : 0.3),
                      BlendMode.srcIn,
                    )),
                label: "Likes"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/view/insta_main_v2/user.svg',
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity((_selectedIndex == 4) ? 0.7 : 0.3),
                      BlendMode.srcIn,
                    )),
                label: "Account"),
          ],
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
