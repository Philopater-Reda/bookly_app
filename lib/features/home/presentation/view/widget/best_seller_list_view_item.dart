import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/book_detals_view.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => SimilarBooksCubit(getIt.get<HomeRepo>()),
                child: BookDetalsView(bookModel: bookModel),
              ),
            ),
          );
        },
        child: SizedBox(
          height: 144,
          child: Row(
            children: [
              CustomListViewItem(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          bookModel.volumeInfo.title!,
                          style: Styles.textStyle20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        bookModel.volumeInfo.authors![0],
                        style: Styles.textStyle14,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Free",
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          BookRating(
                            rating: bookModel.volumeInfo.pageCount ?? 0,
                            count: 0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
