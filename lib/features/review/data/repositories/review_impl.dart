import '../../../../core/shared/shared.dart';
import '../../review.dart';

class ReviewRepositoryImpl extends ReviewRepository {
  final NetworkInfo network;
  final ReviewLocalDataSource local;

  final ReviewRemoteDataSource remote;

  ReviewRepositoryImpl({
    required this.network,
    required this.local,
    required this.remote,
  });

  @override
  FutureOr<Either<Failure, void>> create({
    required ReviewEntity review,
  }) async {
    try {
      if (await network.online) {
        final result = await remote.create(review: review);

        await local.add(review: review);

        return Right(result);
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, void>> delete({
    required String guid,
  }) async {
    try {
      if (await network.online) {
        final result = remote.delete(
          guid: guid,
        );

        await local.remove(
          guid: guid,
        );

        return Right(result);
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, ReviewEntity>> find({
    required String guid,
  }) async {
    try {
      final result = await local.find(
        guid: guid,
      );

      return Right(result);
    } on ReviewNotFoundInLocalCacheFailure catch (_) {
      if (await network.online) {
        final result = await remote.find(
          guid: guid,
        );
        await local.add(review: result);
        return Right(result);
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> read({
    required int page,
    required int limit,
  }) async {
    try {
      if (await network.online) {
        final result = await remote.read(
          page: page,
          limit: limit,
        );

        await local.addAll(items: result.items);

        return Right((items: result.items, total: result.total));
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> refresh({
    required int page,
    required int limit,
  }) async {
    try {
      if (await network.online) {
        await local.removeAll();

        final result = await remote.refresh(
          page: page,
          limit: limit,
        );

        await local.addAll(items: result.items);

        return Right((items: result.items, total: result.total));
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, ReviewEntityPaginatedResponse>> search({
    required int page,
    required int limit,
    required String query,
  }) async {
    try {
      if (await network.online) {
        final result = await remote.search(
          page: page,
          limit: limit,
          query: query,
        );

        await local.addAll(items: result.items);

        return Right((items: result.items, total: result.total));
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  FutureOr<Either<Failure, void>> update({
    required ReviewEntity review,
  }) async {
    try {
      if (await network.online) {
        final result = await remote.update(review: review);

        await local.update(review: review);

        return Right(result);
      } else {
        return Left(NoInternetFailure());
      }
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
