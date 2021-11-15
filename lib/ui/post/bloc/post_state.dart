part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial({required UserProfile currentUser}) = _Initial;
}
