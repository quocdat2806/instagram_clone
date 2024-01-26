import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/pages/home/widgets/content/header_post_item.dart';
import 'package:instagram_clone/ui/pages/home/widgets/content/info_post_item.dart';

class ContentPostItem extends StatelessWidget {
  const ContentPostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
            padding: const EdgeInsets.all(12),
            child: const HeaderPostItem(),),
        const Image(
          image: NetworkImage(
              "https://cdn.sforum.vn/sforum/wp-content/uploads/2022/09/27.jpg"),
          fit: BoxFit.cover,
        ),
        const InfoPostItem(),
      ],
    );
  }
}

// Widget buildImage(){
//   // return    // Image(
//   // //   image: NetworkImage(""),
//   // //   fit: BoxFit.contain,
//   // // ),
// }
