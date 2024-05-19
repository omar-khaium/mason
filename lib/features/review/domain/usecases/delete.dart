import '../../../../core/shared/shared.dart';
import '../../review.dart';

class DeleteReviewUseCase {
  final ReviewRepository repository;

  DeleteReviewUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required String guid,
  }) async {
    return await repository.delete(
      guid: guid,
    );
  }
}
