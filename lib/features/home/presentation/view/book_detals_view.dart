import 'package:flutter/material.dart';

import 'widget/book_detalis_view_body.dart';

class BookDetalsView extends StatelessWidget {
  const BookDetalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetalisViewBody(),
    );
  }
}