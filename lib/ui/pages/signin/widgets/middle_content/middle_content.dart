import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/widget/button/app_button.dart';
import 'package:instagram_clone/ui/widget/text_field/app_text_field.dart';

class MiddleContent extends StatefulWidget {
  const MiddleContent({super.key});

  @override
  State<MiddleContent> createState() => _MiddleContentState();
}

class _MiddleContentState extends State<MiddleContent> {
  late final TextEditingController textEditingController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              AppTextField(
                textEditingController: textEditingController,
                lableText: 'Tên người dùng,email/số di động',
              ),
              SizedBox(
                height: 24,
              ),
              AppTextField(
                textEditingController: textEditingController,
                lableText: 'Mật khẩu',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        AppButton(
          textButtonStyle: TextStyle(color: Colors.white),
          textButton: 'Dang nhap',
          backGroundColor: Color(0xff0064e0),
        ),
        Text("Ban quen mat khau u ?")
      ],
    );
  }
}
