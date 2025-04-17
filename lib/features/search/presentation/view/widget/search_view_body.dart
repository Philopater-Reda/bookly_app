import 'package:flutter/material.dart';

import 'custom_search_text_feld.dart';
import 'search_resultList_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Search',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomSearchTextFeld(),
            const Expanded(child: SearchResultListView())
          ],
        ),
      ),
    );
  }
}
