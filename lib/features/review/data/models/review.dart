import '../../../../core/shared/shared.dart';
import '../../review.dart';

class ReviewModel extends ReviewEntity {
  // TODO: implement model properties
  ReviewModel({
    required super.guid,
  });

  factory ReviewModel.parse({
    required Map<String, dynamic> map,
  }) {
    try {
      // TODO: implement parse
      throw UnimplementedError();
    } catch (e, stackTrace) {
      throw ReviewModelParseFailure(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}
