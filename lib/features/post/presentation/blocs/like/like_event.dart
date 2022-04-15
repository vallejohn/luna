part of 'like_bloc.dart';

@freezed
class LikeEvent with _$LikeEvent {
  const factory LikeEvent.started() = _Started;
  const factory LikeEvent.onAdd({required AddLikeData addLikeData}) = _OnAdd;
  const factory LikeEvent.onFetchPostLikes({required String postID}) = _OnFetchPostLikes;
}
