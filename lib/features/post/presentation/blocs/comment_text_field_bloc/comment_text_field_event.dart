part of 'comment_text_field_bloc.dart';

@freezed
class CommentTextFieldEvent with _$CommentTextFieldEvent {
  const factory CommentTextFieldEvent.started() = _Started;
  const factory CommentTextFieldEvent.onChanged({required String value}) = _OnChanged;
}
