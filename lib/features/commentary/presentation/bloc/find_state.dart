part of 'find_bloc.dart';

abstract class FindCommentaryState extends Equatable {
  const FindCommentaryState();

  @override
  List<Object> get props => [];
}

class FindCommentaryInitial extends FindCommentaryState {
  const FindCommentaryInitial();
}

class FindCommentaryLoading extends FindCommentaryState {
  const FindCommentaryLoading();
}

class FindCommentaryError extends FindCommentaryState {
  final Failure failure;

  const FindCommentaryError({
    required this.failure,
  });

  @override
  List<Object> get props => [failure];
}

class FindCommentaryDone extends FindCommentaryState {
  final CommentaryEntity commentary;

  const FindCommentaryDone({required this.commentary});

  @override
  List<Object> get props => [commentary];
}