part of 'failure.dart';

class ReviewModelParseFailure extends Failure {
  ReviewModelParseFailure({
    required super.message,
    required super.stackTrace,
  });
}

class ReviewNotFoundInLocalCacheFailure extends Failure {
  ReviewNotFoundInLocalCacheFailure()
      : super(
          message: 'Review not found in local cache.',
        );
}
