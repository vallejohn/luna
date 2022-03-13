part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.success({required Stream<QuerySnapshot> commentsStream}) = _Success;
  const factory CommentState.error() = _Error;
}