part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial() = _Initial;
  const factory CreatePostState.success({required Stream<DocumentSnapshot> postSnapshot}) = _Success;
  const factory CreatePostState.error() = _Error;
  const factory CreatePostState.loading() = _Loading;
}