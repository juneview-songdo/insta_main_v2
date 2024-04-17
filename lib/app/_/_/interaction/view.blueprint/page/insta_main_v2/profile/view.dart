import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ProfileView extends StatefulWidget {
  ProfileView({super.key});

  @override
  State<ProfileView> createState() => StateChild();
}

class ProfileViewState extends State<ProfileView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  floating: true,
                  pinned: true,
                  expandedHeight: 265.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      mainAxisSize: MainAxisSize.min,
                      // image + text
                      children: [
                        AppBar(
                          // 뒤로 가기 버튼 숨기기
                          title: Text("Display ID")
                              .textStyle(
                              Theme.of(context).textTheme.titleLarge!)
                              .fontWeight(FontWeight.bold),
                          centerTitle: false,
                          actions: [
                            IconButton(
                                onPressed: () {
                                  // PersonalFeedMenuBottomSheet(context);
                                },
                                icon: Icon(Icons.menu,
                                    size: 30,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .color!)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                // insta circle profile
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                  AssetImage("assets/view/insta_main_v2/winter.jpg"),
                                ),
                                Gap(20),
                                // follwer, following, post
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text("621",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.bold)),
                                        Text("Posts",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.normal)),
                                      ],
                                    ),
                                    Gap(20),
                                    Column(
                                      children: [
                                        Text("126M",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.bold)),
                                        Text("Followers",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.normal)),
                                      ],
                                    ),
                                    Gap(20),
                                    Column(
                                      children: [
                                        Text("52",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.bold)),
                                        Text("Following",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                fontWeight:
                                                FontWeight.normal)),
                                      ],
                                    ),
                                  ],
                                ).padding(horizontal: 10).expanded(),
                              ],
                            ),
                            Gap(10),
                            Text("Display Name").fontWeight(FontWeight.bold),
                            Gap(5),
                            Text(
                              "This is an introduction. This is an introduction. This is an introduction.",
                              maxLines: 2,
                            ),
                            Gap(10),
                          ],
                        ).padding(horizontal: 20),
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(48.0), // TabBar의 높이
                    child: Material(
                      child: TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.grid_on)),
                          Tab(icon: Icon(Icons.list)),
                          Tab(icon: Icon(Icons.directions_bike)),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    crossAxisCount: 3,
                  ),
                  itemCount: 30,

                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset('assets/view/insta_main_v2/winter.jpg');
                  },
                ),
                Column(
                  children: [
                    Text('List Tab'),
                  ],
                ),
                // GridView 탭

                // 다른 컨텐츠 탭
                Center(child: Text('Bicycle Tab')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: ProfileView());
}