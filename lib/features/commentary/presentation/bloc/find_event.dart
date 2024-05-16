part of 'find_bloc.dart';

abstract class FindCommentaryEvent extends Equatable {
  const FindCommentaryEvent();

  @override
  List<Object> get props => [];
}
class FindCommentary extends FindCommentaryEvent {
  final CommentaryEntity commentary;

  const FindCommentary({
    required this.commentary,
  });
    @override
  List<Object> get props => [commentary];
}
