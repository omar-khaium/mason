import '../../../../core/shared/shared.dart';
import '../../review.dart';

class FindReviewUseCase {
  final ReviewRepository repository;

  FindReviewUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, ReviewEntity>> call({
    required String guid,
  }) async {
    return await repository.find(
      guid: guid,
    );
  }
}
