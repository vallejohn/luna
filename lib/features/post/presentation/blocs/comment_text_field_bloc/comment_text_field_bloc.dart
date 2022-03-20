import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_text_field_event.dart';
part 'comment_text_field_state.dart';
part 'comment_text_field_bloc.freezed.dart';

class CommentTextFieldBloc extends Bloc<CommentTextFieldEvent, CommentTextFieldState> {
  CommentTextFieldBloc() : super(CommentTextFieldState.isEmpty()) {
    on<_Started>((event, emit){});
    on<_OnChanged>((event, emit) {
      if(event.value.isNotEmpty){
        emit(CommentTextFieldState.isNotEmpty());
      }else{
        emit(CommentTextFieldState.isEmpty());
      }
    });
  }
}
