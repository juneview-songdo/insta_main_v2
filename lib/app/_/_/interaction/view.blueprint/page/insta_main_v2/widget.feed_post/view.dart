import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class FeedPostView extends StatefulWidget {
  FeedPostView(
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
  State<FeedPostView> createState() => StateChild();
}

class FeedPostViewState extends State<FeedPostView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: NetworkImage(widget.useravatar),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.username),
                        Text(
                          widget.profileCaption,
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey[800],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          FadeInImage(
            image: NetworkImage(widget.feedImage),
            placeholder:
                AssetImage("assets/view/insta_main_v2/placeholder.webp"),
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/view/insta_main_v2/heart.svg',
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        Colors.grey.withOpacity(0.8),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/view/insta_main_v2/message-circle.svg',
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        Colors.grey.withOpacity(0.8),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/view/insta_main_v2/send.svg',
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        Colors.grey.withOpacity(0.8),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/view/insta_main_v2/bookmark.svg',
                  width: 25,
                  colorFilter: ColorFilter.mode(
                    Colors.grey.withOpacity(0.8),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: widget.friendList == null
                        ? "${widget.likes} likes"
                        : "Liked by ${widget.friendList} and ${widget.likes} others",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 5,
                ),
                child: RichText(
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: " ${widget.caption}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  "Febuary 2020",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Gap(20),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: FeedPostView(
      username: "Tony", profileCaption: "@Home, Nungambakkam, Chennai.", likes: "123", friendList: "Johanna, Captain and",
      useravatar:
      "https://vignette.wikia.nocookie.net/spiderman-films/images/4/4e/CaptainAmerica_AOU_character-art-poster.jpg/revision/latest/scale-to-width-down/340?cb=20160507011012",
      feedImage:
      "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
      caption: "Happy to anounce that I bought a new Laptop."
  ).center());
}
