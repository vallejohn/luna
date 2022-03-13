part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.started() = _Started;
  const factory CommentEvent.onAdd({required AddCommentData addCommentData}) = _OnAdd;
  const factory CommentEvent.onFetchPostComments({required String postID}) = _OnFetchPostComments;
}
