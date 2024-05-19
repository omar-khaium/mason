import '../../../../core/shared/shared.dart';
import '../../review.dart';

class RefreshAllReviewUseCase {
  final ReviewRepository repository;

  RefreshAllReviewUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> call({
    required int page,
    required int limit,
  }) async {
    return await repository.refresh(
      page: page,
      limit: limit,
    );
  }
}
