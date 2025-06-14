import 'package:bookly_app/features/home/presentation/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 38,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonText: "Free",
              borderRadius: "Left",
              backgroundColors: Colors.white,
              textColors: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              buttonText: "Free preview",
              borderRadius: "Right",
              backgroundColors: Color(0xffEF8262),
              textColors: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
