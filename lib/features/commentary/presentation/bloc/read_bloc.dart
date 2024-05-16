import '../../../../core/shared/shared.dart';
import '../../commentary.dart';

part 'read_event.dart';
part 'read_state.dart';

class ReadCommentaryBloc extends Bloc<ReadCommentaryEvent, ReadCommentaryState> {
  final ReadCommentaryUseCase useCase;
  ReadCommentaryBloc({required this.useCase}) : super(const ReadCommentaryInitial()) {
    on<ReadCommentary>((event, emit) async {
      emit(const ReadCommentaryLoading());
      final result = await useCase(commentary: event.commentary);
      result.fold(
        (failure) => emit(ReadCommentaryError(failure: failure)),
        (commentary) => emit(ReadCommentaryDone(commentary: commentary)),
      );
    });
  }
}
