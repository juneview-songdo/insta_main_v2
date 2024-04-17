import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class HomeFeedItemView extends StatefulWidget {
  HomeFeedItemView(
      {super.key,
      required this.useravatar,
      required this.username,
      required this.feedImage,
      required this.caption,
      required this.profileCaption,
      required this.likes,
      required this.friendList});

  final String useravatar;
  final String username;
  final String feedImage;
  final String caption;
  final String profileCaption;
  final String likes;
  final String? friendList;

  @override
  State<HomeFeedItemView> createState() => StateChild();
}

class HomeFeedItemViewState extends State<HomeFeedItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                // avatar
                Gap(2),
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: NetworkImage(widget.useravatar),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(widget.username)
                            .textStyle(Theme.of(context).textTheme.bodyMedium!)
                            .fontWeight(FontWeight.bold),
                        Gap(2),
                      ],
                    ),
                    Gap(2),
                    Text(widget.profileCaption)
                        .textStyle(Theme.of(context).textTheme.labelMedium!)
                        .opacity(0.6),
                  ],
                )
              ],
            ),
            Row(
              children: [Icon(Icons.more_horiz)],
            )
          ],
        ).padding(horizontal: 12),
        Gap(10),
        FadeInImage(
          image: NetworkImage(widget.feedImage),
          placeholder:
          AssetImage("assets/view/insta_main_v2/placeholder.webp"),
          width: MediaQuery.of(context).size.width,
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 35,
                ),
                Gap(20),
                SvgPicture.asset("assets/view/insta_main_v2/chat.svg",
                    width: 31, height: 31),
              ],
            ),
            Icon(Icons.bookmark_border, size: 35),
          ],
        ).padding(horizontal: 12),
        Gap(8),
        RichText(
          text: TextSpan(
            text: widget.username,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text:
                    " Write down in detail the contents about gratitude, write down in detail, apply the contents in detail, apply the contents in detail, write down in detail, apply the contents in detail",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).textTheme.bodyMedium!.color),
              ),
              TextSpan(
                text: " 3 Hours", // 시간을 나타내는 부분
                style: Theme.of(context).textTheme.bodyMedium!,
              ).textColor(Colors.grey),
            ],
          ),
        ).padding(horizontal: 12),
        Gap(5),
        // Divider(
        //   color: Colors.grey,
        // ),
      ],
    ).padding(bottom: 20);
  }
}

main() async {
  return buildApp(appHome: HomeFeedItemView(
      username: "Morish Gady",
      profileCaption: "The Shop",
      likes: "532",
      friendList: "Alina and",
      useravatar:
      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
      feedImage:
      "https://images.unsplash.com/photo-1598309255528-fc495f54fadd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
      caption: "My Love."
  ).center());
}
