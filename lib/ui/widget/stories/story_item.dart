import 'package:flutter/material.dart';

class StoryHome extends StatelessWidget {
  final String? thumbnailImage;
  final String? titleText;
  final bool? isMe;

  const StoryHome({super.key, this.thumbnailImage, this.titleText, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 56,
                backgroundColor: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(1), // Border radius
                  child: ClipOval(
                    child: Image(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          "https://inkythuatso.com/uploads/thumbnails/800/2022/03/anh-lien-minh-huyen-thoai-4k-24-17-10-27-19.jpg"),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 4,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(titleText ?? ""),
      ],
    );
  }
}
