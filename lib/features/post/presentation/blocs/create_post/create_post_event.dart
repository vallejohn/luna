part of 'create_post_bloc.dart';

@freezed
abstract class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.started() = _Started;
  const factory CreatePostEvent.onAddPost({PickedFile? image, required String title, required String content}) = _OnAddPost;
}
