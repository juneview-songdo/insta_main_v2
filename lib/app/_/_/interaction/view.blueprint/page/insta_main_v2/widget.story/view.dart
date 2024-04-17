import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../widget.story_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class StoryView extends StatefulWidget {
  StoryView({super.key});

  @override
  State<StoryView> createState() => StateChild();
}

class StoryViewState extends State<StoryView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10),
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              StoryItemView(
                  image: "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
                  name: "Captain",
                  seen: false),
              StoryItemView(
                  image:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                  name: "Cam",
                  seen: true),
              StoryItemView(
                  image:
                      "https://vignette.wikia.nocookie.net/spiderman-films/images/4/4e/CaptainAmerica_AOU_character-art-poster.jpg/revision/latest/scale-to-width-down/340?cb=20160507011012",
                  name: "Buster",
                  seen: false),
              StoryItemView(
                  image: "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
                  name: "peter",
                  seen: true),
              StoryItemView(
                  image:
                      "https://vignette.wikia.nocookie.net/spiderman-films/images/4/4e/CaptainAmerica_AOU_character-art-poster.jpg/revision/latest/scale-to-width-down/340?cb=20160507011012",
                  name: "Edy",
                  seen: false),
              StoryItemView(
                  image:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                  name: "Thor",
                  seen: false),
            ],
          ),
        ),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: StoryView().center());
}
