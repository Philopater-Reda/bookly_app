import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_list_view_item.dart';

class BookImageAndTitle extends StatelessWidget {
  const BookImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.25,
          ),
          child: const CustomListViewItem(
            imageUrl: "https://www.vecteezy.com/photo/36324708-ai-generated-picture-of-a-tiger-walking-in-the-forest", // Replace with actual image URL
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          "The jungle book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const BookRating(
          rating: 4,
          count: 245,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
