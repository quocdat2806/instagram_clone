import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onChangedText;
  final String? lableText;

  const AppTextField({
    Key? key,
    this.textEditingController,
    this.onChangedText,
    this.lableText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff1c2a33),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: textEditingController,
                onChanged: (value) {
                  onChangedText != null ? onChangedText!(value) : null;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: lableText,

                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
