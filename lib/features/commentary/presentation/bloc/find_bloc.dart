import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

part 'find_event.dart';
part 'find_state.dart';

class FindCommentaryBloc extends Bloc<FindCommentaryEvent, FindCommentaryState> {
  final FindCommentaryUseCase useCase;
  FindCommentaryBloc({required this.useCase}) : super(const FindCommentaryInitial()) {
    on<FindCommentary>((event, emit) async {
      emit(const FindCommentaryLoading());
      final result = await useCase(commentary: event.commentary);
      result.fold(
        (failure) => emit(FindCommentaryError(failure: failure)),
        (commentary) => emit(FindCommentaryDone(commentary: commentary)),
      );
    });
  }
}
