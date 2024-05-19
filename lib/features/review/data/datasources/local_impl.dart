import '../../../../core/shared/shared.dart';
import '../../review.dart';

class ReviewLocalDataSourceImpl extends ReviewLocalDataSource {
  final Map<String, ReviewEntity> _cache = {};

  @override
  FutureOr<void> add({
    required ReviewEntity review,
  }) {
    _cache[review.guid] = review;
  }

  @override
  FutureOr<void> addAll({
    required List<ReviewEntity> items,
  }) {
    for (final item in items) {
      _cache[item.guid] = item;
    }
  }

  @override
  FutureOr<void> update({
    required ReviewEntity review,
  }) {
    _cache[review.guid] = review;
  }

  @override
  FutureOr<void> remove({
    required String guid,
  }) {
    _cache.remove(guid);
  }

  @override
  FutureOr<void> removeAll() {
    _cache.clear();
  }

  @override
  FutureOr<ReviewEntity> find({
    required String guid,
  }) {
    final item = _cache[guid];
    if (item == null) {
      throw ReviewNotFoundInLocalCacheFailure();
    }
    return item;
  }
}
