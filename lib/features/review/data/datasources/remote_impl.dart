import '../../../../core/shared/shared.dart';
import '../../review.dart';

class ReviewRemoteDataSourceImpl extends ReviewRemoteDataSource {
  final Client client;

  ReviewRemoteDataSourceImpl({
    required this.client,
  });

  @override
  FutureOr<void> create({
    required ReviewEntity review,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> delete({
    required String guid,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<ReviewModel> find({
    required String guid,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<ReviewModelPaginatedResponse> read({
    required int page,
    required int limit,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<ReviewModelPaginatedResponse> refresh({
    required int page,
    required int limit,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<ReviewModelPaginatedResponse> search({
    required int page,
    required int limit,
    required String query,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> update({
    required ReviewEntity review,
  }) async {
    throw UnimplementedError();
  }
}
