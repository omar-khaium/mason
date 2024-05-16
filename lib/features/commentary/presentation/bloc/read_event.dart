part of 'read_bloc.dart';

abstract class ReadCommentaryEvent extends Equatable {
  const ReadCommentaryEvent();

  @override
  List<Object> get props => [];
}
class ReadCommentary extends ReadCommentaryEvent {
  final CommentaryEntity commentary;

  const ReadCommentary({
    required this.commentary,
  });
    @override
  List<Object> get props => [commentary];
}
