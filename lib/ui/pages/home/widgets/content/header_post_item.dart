import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/app_icons.dart';

class HeaderPostItem extends StatelessWidget {
  const HeaderPostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(1), // Border radius
                  child: ClipOval(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:'
                      'ANd9GcRvZXYfb1twZU2MpCuThdzklwMajxZ0iW3q20FF5wasPQ&s',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "dat",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.lightBlueAccent,
                      size: 14,
                    ),
                  ],
                ),
                Text(
                  "Tran Quoc Dat",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        SvgPicture.asset(
          AppIcons.icMore,
          height: 20,
          width: 20,
        ),
      ],
    );
  }
}
