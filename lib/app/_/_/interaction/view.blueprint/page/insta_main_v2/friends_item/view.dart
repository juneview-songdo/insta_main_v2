import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../friends_badge_text/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class FriendsItemView extends StatefulWidget {
  FriendsItemView({super.key});

  @override
  State<FriendsItemView> createState() => StateChild();
}

class FriendsItemViewState extends State<FriendsItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        print("click list friends_item");
      },
      leading: CircleAvatar(
        backgroundImage:
            AssetImage("assets/view/insta_main_v2/iu.jpg"),
      ),
      title: Text("Kim Toss")
          .textStyle(Theme.of(context).textTheme.bodyLarge!)
          .fontWeight(FontWeight.bold),
      subtitle: Text("Toss Bank").textStyle(Theme.of(context).textTheme.bodyMedium!),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("3:00 PM").textStyle(Theme.of(context).textTheme.bodyMedium!),
          Gap(3),
          FriendsBadgeTextView(num: Random().nextInt(100), size: 12).height(23),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: FriendsItemView().center());
}
