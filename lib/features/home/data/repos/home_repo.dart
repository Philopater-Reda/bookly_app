import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure,List<BookModel>>> fetchFuturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({
    required String category,
  });
}
