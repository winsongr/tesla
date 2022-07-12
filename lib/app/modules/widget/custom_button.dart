import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.text,
    this.child,
    required this.onTap,
    this.color,
    this.border,
    this.buttonTextColor,
    this.space,
    this.textcolor,
    this.width,
  }) : super(key: key);

  final String? text;
  final Widget? child;
  final Function() onTap;
  final Color? color;
  final Color? textcolor;
  final Border? border;
  final Color? buttonTextColor;
  final double? space;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? Get.width * 0.42,

        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.016,
          horizontal: Get.width * 0.05,
        ),
        decoration: BoxDecoration(
          color: color,
          border: border,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child!,
            SizedBox(width: space ?? Get.width * 0.04),
            Text('$text',
                textScaleFactor: Get.textScaleFactor,
                style: TextStyle(fontSize: Get.width * 0.04, color: textcolor)),
          ],
        ),
      ),
    );
  }
}
