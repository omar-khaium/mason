import '../../../../core/shared/shared.dart';
import '../../review.dart';

typedef ReviewEntityPaginatedResponse = ({
  List<ReviewEntity> items,
  int total,
});

abstract class ReviewRepository {
  FutureOr<Either<Failure, void>> create({
    required ReviewEntity review,
  });

  FutureOr<Either<Failure, void>> delete({
    required String guid,
  });

  FutureOr<Either<Failure, ReviewEntity>> find({
    required String guid,
  });

  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> read({
    required int page,
    required int limit,
  });

  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> refresh({
    required int page,
    required int limit,
  });

  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> search({
    required int page,
    required int limit,
    required String query,
  });

  FutureOr<Either<Failure, void>> update({
    required ReviewEntity review,
  });
}
