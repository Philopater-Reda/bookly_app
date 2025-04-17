import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.backgroundColors,
    required this.borderRadius,
    required this.textColors,
     this.fontSize,
  });

  final String buttonText;
  final String borderRadius;
  final Color backgroundColors;
  final Color textColors;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColors,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius == "Left"
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  )
                : const BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
          ),
        ),
        child: Text(
          buttonText,
          style: Styles.textStyle18.copyWith(
            color: textColors,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
