import '../../../../core/shared/shared.dart';
import '../../review.dart';

class CreateReviewUseCase {
  final ReviewRepository repository;

  CreateReviewUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required ReviewEntity review,
  }) async {
    return await repository.create(
      review: review,
    );
  }
}
