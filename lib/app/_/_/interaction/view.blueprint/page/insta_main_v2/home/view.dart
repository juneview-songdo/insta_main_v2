import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../home_feed_item/view.dart';
import '../widget.feed_post/view.dart';
import '../widget.story/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => StateChild();
}

class HomeViewState extends State<HomeView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/view/insta_main_v2/logo.webp',
              width: 100,
            )
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/view/insta_main_v2/camera.svg',
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.8),
                BlendMode.srcIn,
              )),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/view/insta_main_v2/send.svg',
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.8),
                  BlendMode.srcIn,
                )),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: StoryView(), // 스토리 뷰 위젯
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HomeFeedItemView(
                    username: "Tony",
                    profileCaption: "@Home, Nungambakkam, Chennai.",
                    likes: "123",
                    friendList: "Johanna, Captain and",
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
                    caption: "Happy to anounce that I bought a new Laptop."),
                HomeFeedItemView(
                    username: "Trump",
                    profileCaption: "Sponsored",
                    likes: "82",
                    friendList: null,
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1598212651529-14a6c5c4885f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "Marriage."),
                HomeFeedItemView(
                    username: "Morish Gady",
                    profileCaption: "The Shop",
                    likes: "532",
                    friendList: "Alina and",
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1598309255528-fc495f54fadd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "My Love."),
                HomeFeedItemView(
                    username: "Stony",
                    profileCaption: "@Madurai, Temple City Hotel.",
                    likes: "230",
                    friendList: "Joan, Louji and",
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "Bought my brannd new watch."),
                HomeFeedItemView(
                    username: "Chrish",
                    profileCaption: "My Best Friend",
                    likes: "5234",
                    friendList: null,
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1598310072808-fd966f121e7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "In Paris, France."),
                HomeFeedItemView(
                    username: "Evan",
                    profileCaption: "@Home, Nungambakkam, Chennai.",
                    likes: "32",
                    friendList: null,
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1558980394-da1f85d3b540?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "Stay Safe."),
                HomeFeedItemView(
                    username: "Jada",
                    profileCaption: "@Tirunelveli",
                    likes: "1293",
                    friendList: "Perter and",
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1598346653951-aeb1396d64ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "See my new patner."),
                HomeFeedItemView(
                    username: "Stark",
                    profileCaption: "@Tirunelveli",
                    likes: "3643",
                    friendList: "Captain, Tony and",
                    useravatar:
                        "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                    feedImage:
                        "https://images.unsplash.com/photo-1593642634367-d91a135587b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
                    caption: "Brand new mobile."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: HomeView());
}
