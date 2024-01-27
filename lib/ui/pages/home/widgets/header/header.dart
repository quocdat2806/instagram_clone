import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/app_icons.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(
            children: [
              SvgPicture.asset(
                AppIcons.icMessengerText,
                height: 32,
                width: 32,
              ),
              const Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.icFavorite,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(
                AppIcons.icMessenger,
                height: 20,
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
