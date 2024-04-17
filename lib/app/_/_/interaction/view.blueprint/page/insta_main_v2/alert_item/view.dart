import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class AlertItemView extends StatefulWidget {
  AlertItemView(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.timeAge});

  final String imagePath;
  final String name;
  final String description;
  final String timeAge;

  @override
  State<AlertItemView> createState() => StateChild();
}

class AlertItemViewState extends State<AlertItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(widget.imagePath),
        ),
        Gap(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: widget.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: widget.description,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).textTheme.bodyLarge!.color),
                    ),
                    TextSpan(
                      text: widget.timeAge,
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ).textColor(Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ).padding(bottom: 20);
  }
}

main() async {
  return buildApp(appHome: AlertItemView(
    imagePath: "assets/view/insta_main_v2/winter.jpg",
    name: "Display Name",
    description: " appreciates your like.",
    timeAge: " 3 hours ago",
  ).center());
}
