import '../../../../core/shared/shared.dart';
import '../../review.dart';

class ReadAllReviewUseCase {
  final ReviewRepository repository;

  ReadAllReviewUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> call({
    required int page,
    required int limit,
  }) async {
    return await repository.read(
      page: page,
      limit: limit,
    );
  }
}
