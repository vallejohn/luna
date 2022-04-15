part of 'like_bloc.dart';

@freezed
class LikeState with _$LikeState {
  const factory LikeState.initial() = _Initial;
  const factory LikeState.liked({required bool isLiked}) = _Liked;
  const factory LikeState.error() = _Error;
}
