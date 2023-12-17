import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/widget/text_field/app_text_field.dart';

class SignUpSubPage extends StatelessWidget {
  final String? headerTitle;
  final String? subTitle;
  final Widget? children;
  final TextEditingController? textEditingController;

  const SignUpSubPage({
    super.key,
    this.headerTitle,
    this.subTitle,
    this.children,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_sharp),
      ),
      body: Column(
        children: [
          Text(headerTitle ?? ''),
          subTitle != null ? Text(subTitle ?? '') : const SizedBox(),
          AppTextField(textEditingController: textEditingController,
          ),
        ],
      ),
    );
  }
}
