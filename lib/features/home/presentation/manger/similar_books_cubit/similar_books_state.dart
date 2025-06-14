part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
  // ignore: non_constant_identifier_names
  final List<BookModel> Books;

  const SimilarBooksSuccess(this.Books);
}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksFailure(this.errorMessage);
}
