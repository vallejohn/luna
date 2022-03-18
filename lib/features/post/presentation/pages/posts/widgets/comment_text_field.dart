import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/features/post/data/models/comment.dart';

import '../../../../../../core/utils/params.dart';
import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';
import '../../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';
import '../../../blocs/comment/comment_bloc.dart';

class CommentTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function onAddComment;
  const CommentTextField({Key? key, required this.controller, required this.onAddComment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          controller: controller,
          textInputAction: TextInputAction.done,
          style: TextStyle(fontSize: textSizeMedium, color: AppColors.bodyText),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 50, top: 10, bottom: 10),
            hintText: 'Your thoughts here, '
                '${BlocProvider.of<UserProfileBloc>(context).state.maybeWhen(
                withData: (data) => data.user.firstname,
                orElse: () => '')}',
            filled: true,
            fillColor: AppColors.textFieldBG,
            hintStyle: TextStyle(color: AppColors.electricBlue.withOpacity(0.5)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(customBorderRadius), borderSide: BorderSide.none),
          ),
        ),
        Positioned(
          left: 12,
          top: 10,
          child: CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage('${BlocProvider.of<UserProfileBloc>(context).state.maybeWhen(
                withData: (data) => data.user.profileImageURL,
                orElse: () => '')}'),
          ),
        ),
        Positioned(
            right: 12,
            top: 10,
            child: GestureDetector(
                onTap: () => onAddComment(),
                child: Icon(
                  Ionicons.add,
                  color: AppColors.electricBlue,
                )))
      ],
    );
  }
}
