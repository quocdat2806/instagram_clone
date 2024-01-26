import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/app_icons.dart';
import 'package:instagram_clone/ui/widget/button/app_button.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          textButton: "Tao tai khoan moi",
          isHasBorder: true ,
          backGroundColor: Colors.transparent,
          colorBorder: Colors.blue,
          textButtonStyle: TextStyle(
            color: Colors.blue
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.icMeta,
              width: 20,
              height: 20,
            ),
            SizedBox(width: 6,),
            Text('Meta')
          ],
        )
      ],
    );
  }
}
