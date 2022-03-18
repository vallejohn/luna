import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/features/post/data/models/comment.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';

class CommentItem extends StatelessWidget {
  final UserProfile user;
  final Comment comment;
  const CommentItem({Key? key, required this.user, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundImage: CachedNetworkImageProvider(user.profileImageURL),
          ),
          AppHorizontalSpace.small,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${user.firstname} ${user.lastname}',
                      style: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikMedium),
                    ),
                    AppHorizontalSpace.tiny,
                    Text(
                      '5 mins ago',
                      style: AppTextStyle.small.copyWith(color: AppColors.lightGrey),
                    ),
                  ],
                ),
                Text(
                  comment.body!,
                  style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
