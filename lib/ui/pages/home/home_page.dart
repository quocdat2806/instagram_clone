import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/pages/home/widgets/content/content_post_item.dart';
import 'package:instagram_clone/ui/pages/home/widgets/header/header.dart';
import 'package:instagram_clone/ui/widget/stories/story_item.dart';

class HomePage extends StatefulWidget {
  static const router = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const HomeChildPage();
  }
}

class HomeChildPage extends StatefulWidget {
  const HomeChildPage({super.key});

  @override
  State<HomeChildPage> createState() => _HomeChildPageState();
}

class _HomeChildPageState extends State<HomeChildPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderHome(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    StoryHome(
                      titleText: "Tin cua ban",
                      isMe: true,
                      thumbnailImage:
                          "https://inkythuatso.com/uploads/thumbnails/800/2022/03/"
                          "anh-lien-minh-huyen-thoai-4k-24-17-10-27-19.jpg",
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 0.3, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const ContentPostItem(),
              const ContentPostItem(),
              const ContentPostItem(),
              
            ],
          ),
        ),
      ),
    );
  }
}
