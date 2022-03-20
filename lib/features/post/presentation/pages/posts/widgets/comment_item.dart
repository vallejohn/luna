import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 15),
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
                AppVerticalSpace.tiny,
                Text(
                  comment.body!,
                  style: AppTextStyle.medium.copyWith(color: AppColors.lightBlack),
                ),
                AppVerticalSpace.small,
                Container(
                  child: Row(
                    children: [
                      Icon(Ionicons.chevron_down_outline, color: AppColors.lightGrey, size: 15,),
                      AppHorizontalSpace.tiny,
                      Expanded(
                        child: Text(
                          'See 25 Replies',
                          style: AppTextStyle.small.copyWith(color: AppColors.lightGrey),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Ionicons.heart_outline),
                        color: AppColors.lightGrey,
                        splashRadius: 25,
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                      AppHorizontalSpace.tiny,
                      Text(
                        '34',
                        style: AppTextStyle.small.copyWith(color: AppColors.lightGrey),
                      ),
                      AppHorizontalSpace.small,
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Ionicons.arrow_undo_outline),
                        color: AppColors.lightGrey,
                        splashRadius: 25,
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
