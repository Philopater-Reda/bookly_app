import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/book_detalis_view_body.dart';

class BookDetalsView extends StatefulWidget {
  const BookDetalsView({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  State<BookDetalsView> createState() => _BookDetalsViewState();
}

class _BookDetalsViewState extends State<BookDetalsView> {
  @override
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final categories = widget.bookModel.volumeInfo.categories;
      final category =
          (categories != null && categories.isNotEmpty) ? categories[0] : null;
      if (category != null) {
        BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
          category: category,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetalisViewBody(),
    );
  }
}
