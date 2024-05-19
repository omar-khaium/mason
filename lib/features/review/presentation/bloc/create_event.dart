part of 'create_bloc.dart';

abstract class CreateReviewEvent extends Equatable {
  const CreateReviewEvent();

  @override
  List<Object> get props => [];
}

class CreateReview extends CreateReviewEvent {
  final ReviewEntity review;

  const CreateReview({
    required this.review,
  });
  @override
  List<Object> get props => [review];
}
