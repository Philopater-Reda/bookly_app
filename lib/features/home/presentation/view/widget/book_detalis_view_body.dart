import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_image_and_title.dart';
import 'books_action.dart';
import 'custom_book_detals_app_bar.dart';
import 'featured_list_view.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BookImageAndTitle(),
                BooksAction(),
                Padding(
                  padding: EdgeInsets.only(
                    right: 30,
                    left: 30,
                    top: 30,
                    bottom: 10,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle18,
                    ),
                  ),
                ),
                FeatureBooksListView(
                  height: 0.2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
