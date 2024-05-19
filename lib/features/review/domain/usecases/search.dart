import '../../../../core/shared/shared.dart';
import '../../review.dart';

class SearchReviewUseCase {
  final ReviewRepository repository;

  SearchReviewUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> call({
    required int page,
    required int limit,
    required String query,
  }) async {
    return await repository.search(
      page: page,
      limit: limit,
      query: query,
    );
  }
}
