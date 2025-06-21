import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_error_widget.dart';
import '../../../../../core/widget/custome_loading_Indicator.dart';
import 'custom_list_view_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
    required this.height,
  });

  final double height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * height,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CustomListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomeLoadingIndicator();
        }
      },
    );
  }
}
