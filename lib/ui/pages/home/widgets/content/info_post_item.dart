import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/pages/home/widgets/content/action_post_item.dart';

class InfoPostItem extends StatelessWidget {
  const InfoPostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ActionPostItem(),
          SizedBox(
            height: 12,
          ),
          Text(
            "15.454.133 lượt thích",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            "marvel Start your countdown to the "
            "glorious arrival of Marvel Studios' #Loki",
          ),
          Text(
            "xem tất cả 15.039 bình luận",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Row(
            children: [
              Text(
                "3 ngày trước",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Xem bản dịch",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
