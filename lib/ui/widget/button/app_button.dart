import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String textButton;
  final Color? backGroundColor;
  final Widget? icon;
  final bool isHasBorder;
  final Color? colorBorder;
  final Function()? handleTabButton;
  final TextStyle? textButtonStyle;
  final double? borderRadius;

  const AppButton(
      {super.key,
      this.textButton = '',
      this.backGroundColor = Colors.white,
      this.icon,
      this.isHasBorder = false,
      this.handleTabButton,
      this.textButtonStyle,
      this.borderRadius,
      this.colorBorder});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleTabButton,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 30),
            color: backGroundColor,
            border: Border.all(
              width: isHasBorder ? 1.5 : 0,
              color: isHasBorder
                  ? colorBorder ?? Colors.transparent
                  : Colors.transparent,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                icon!,
                const SizedBox(width: 5),
              ],
              Text(
                textButton,
                textAlign: TextAlign.center,
                style: textButtonStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
