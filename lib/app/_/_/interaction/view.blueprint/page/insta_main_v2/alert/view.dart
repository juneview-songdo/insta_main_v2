import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../alert_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class AlertView extends StatefulWidget {
  AlertView({super.key});

  @override
  State<AlertView> createState() => StateChild();
}

class AlertViewState extends State<AlertView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Notifications")
            .textStyle(Theme.of(context).textTheme.titleLarge!)
            .fontWeight(FontWeight.bold),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          AlertItemView(
            imagePath: 'assets/view/insta_main_v2/winter.jpg',
            name: "Display Name",
            description: " likes your post.",
            timeAge: " 3 hours ago",
          ),
          AlertItemView(
            imagePath: 'assets/view/insta_main_v2/winter.jpg',
            name: "Display Name",
            description: " appreciates your like.",
            timeAge: " 3 hours ago",
          ),
          // Add more Row widgets as needed for each notification
        ],
      ),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return buildApp(appHome: AlertView());
}
