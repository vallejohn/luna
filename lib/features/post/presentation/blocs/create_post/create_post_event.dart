part of 'create_post_bloc.dart';

@freezed
abstract class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.started() = _Started;
}
