import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/features/post/presentation/blocs/comment_text_field_bloc/comment_text_field_bloc.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';

class CommentTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onAddComment;
  const CommentTextField({Key? key, required this.controller, required this.onAddComment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(customBorderRadius),
      child: BlocBuilder<CommentTextFieldBloc, CommentTextFieldState>(
        builder: (context, state) {
          return TextFormField(
            controller: controller,
            textInputAction: TextInputAction.done,
            style: TextStyle(fontSize: AppFontSize.medium, color: AppColors.bodyText),
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
              ),
              suffixIcon: Material(
                borderRadius: BorderRadius.circular(50),
                clipBehavior: Clip.none,
                color: Colors.transparent,
                child: IconButton(
                    onPressed: () => state.when(
                          isNotEmpty: () => onAddComment(),
                          isEmpty: () => null,
                        ),
                    icon: Icon(
                      state.when(
                            isNotEmpty: () => Ionicons.send,
                            isEmpty: () => Ionicons.send_outline,
                          ),
                    ), color: AppColors.electricBlue,),
              ),
              contentPadding: EdgeInsets.only(left: 50, top: 10, bottom: 10),
              hintText: 'Your thoughts here',
              filled: true,
              fillColor: AppColors.electricBlue.withOpacity(0.05),
              hintStyle: TextStyle(color: AppColors.electricBlue.withOpacity(0.5)),
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
            onChanged: (value) {
              context.read<CommentTextFieldBloc>().add(CommentTextFieldEvent.onChanged(value: value));
            },
          );
        },
      ),
    );
  }
}
