import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/common/app_icons.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text("Tieng Viet"),
        const SizedBox(height: 30,),
        SvgPicture.asset(AppIcons.icInstagram,height: 40,width: 40,)
      ],
    );
  }
}
