import '../../../../core/shared/shared.dart';
import '../../review.dart';

typedef ReviewModelPaginatedResponse = ({
  List<ReviewModel> items,
  int total,
});

abstract class ReviewRemoteDataSource {
  FutureOr<void> create({
    required ReviewEntity review,
  });

  FutureOr<void> delete({
    required String guid,
  });

  FutureOr<ReviewModel> find({
    required String guid,
  });

  FutureOr<ReviewModelPaginatedResponse> read({
    required int page,
    required int limit,
  });

  FutureOr<ReviewModelPaginatedResponse> refresh({
    required int page,
    required int limit,
  });

  FutureOr<ReviewModelPaginatedResponse> search({
    required int page,
    required int limit,
    required String query,
  });

  FutureOr<void> update({
    required ReviewEntity review,
  });
}
