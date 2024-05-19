import '../../../../core/shared/shared.dart';
import '../../review.dart';

part 'create_event.dart';
part 'create_state.dart';

class CreateReviewBloc extends Bloc<CreateReviewEvent, CreateReviewState> {
  final CreateReviewUseCase useCase;
  CreateReviewBloc({required this.useCase})
      : super(const CreateReviewInitial()) {
    on<CreateReview>((event, emit) async {
      emit(const CreateReviewLoading());
      final result = await useCase(review: event.review);
      result.fold(
        (failure) => emit(CreateReviewError(failure: failure)),
        (review) => emit(CreateReviewDone(review: review)),
      );
    });
  }
}
