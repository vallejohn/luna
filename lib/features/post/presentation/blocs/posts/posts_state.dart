part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = _Initial;
  const factory PostsState.success({required Stream<QuerySnapshot> postsStream}) = _Success;
  const factory PostsState.empty() = _Empty;
  const factory PostsState.error({required String message}) = _Error;
}
