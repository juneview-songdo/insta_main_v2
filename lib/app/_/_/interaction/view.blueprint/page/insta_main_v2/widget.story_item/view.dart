import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class StoryItemView extends StatefulWidget {
  StoryItemView({
    super.key,
    required this.image,
    required this.name,
    required this.seen,
  });

  final String image;
  final String name;
  final bool seen;

  @override
  State<StoryItemView> createState() => StateChild();
}

class StoryItemViewState extends State<StoryItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: widget.seen
              ? BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.white, Colors.grey]),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(32),
                )
              : BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.pinkAccent,
                    Colors.orange,
                    Colors.orangeAccent,
                    Colors.pink
                  ]),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
          child: Container(
            padding: EdgeInsets.all(
              2,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: FadeInImage(
                image: NetworkImage(widget.image),
                width: 45,
                height: 45,
                fit: BoxFit.cover,
                placeholder: AssetImage('assets/view/insta_main_v2/placeholderforavatar.webp'),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.name,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

main() async {
  return buildApp(
      appHome: StoryItemView(
    image:
        "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
    name: "Tony Stark",
    seen: true,
  ));
}
