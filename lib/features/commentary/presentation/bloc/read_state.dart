part of 'read_bloc.dart';

abstract class ReadCommentaryState extends Equatable {
  const ReadCommentaryState();

  @override
  List<Object> get props => [];
}

class ReadCommentaryInitial extends ReadCommentaryState {
  const ReadCommentaryInitial();
}

class ReadCommentaryLoading extends ReadCommentaryState {
  const ReadCommentaryLoading();
}

class ReadCommentaryError extends ReadCommentaryState {
  final Failure failure;

  const ReadCommentaryError({
    required this.failure,
  });

  @override
  List<Object> get props => [failure];
}

class ReadCommentaryDone extends ReadCommentaryState {
  final CommentaryEntity commentary;

  const ReadCommentaryDone({required this.commentary});

  @override
  List<Object> get props => [commentary];
}