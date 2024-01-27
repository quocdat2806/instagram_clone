import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/app_icons.dart';

class ActionPostItem extends StatelessWidget {
  const ActionPostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.icFavorite,
              height: 22,
              width: 22,
            ),
            const SizedBox(width: 12,),
            SvgPicture.asset(
              AppIcons.icComment,
              height: 22,
              width: 22,
            ),
            const SizedBox(width: 12,),

            SvgPicture.asset(
              AppIcons.icShare,
              height: 22,
              width: 22,
            ),
          ],
        ),
        builderDot(),
        SvgPicture.asset(
          AppIcons.icBookmark,
          height: 22,
          width: 22,
        ),

      ],
    );
  }
}

Widget builderDot (){
  return Container(
    width: 6,
    height: 6,
    color: Colors.red,
  );
}
