import '../../../../core/shared/shared.dart';
import '../../review.dart';

abstract class ReviewLocalDataSource {
  FutureOr<void> add({
    required ReviewEntity review,
  });

  FutureOr<void> addAll({
    required List<ReviewEntity> items,
  });

  FutureOr<void> update({
    required ReviewEntity review,
  });

  FutureOr<void> remove({
    required String guid,
  });

  FutureOr<void> removeAll();

  FutureOr<ReviewEntity> find({
    required String guid,
  });
}
