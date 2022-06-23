import 'package:flutter/material.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/features/post/data/models/post.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';

class AuthorInformation extends StatelessWidget {
  final UserProfile author;
  final Post post;
  const AuthorInformation({Key? key, required this.author, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(author.profileImageURL),
        ),
        AppHorizontalSpace.small,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                children: [
                  Text(
                    '${author.firstname} ${author.lastname}',
                    style: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikSemiBold, color: AppColors.darkGrey),
                  ),
                  AppHorizontalSpace.tiny,
                  Text(
                    'on',
                    style: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikRegular, color: AppColors.darkGrey),
                  ),
                  AppHorizontalSpace.tiny,
                  Text(
                    'Travel',
                    style: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikSemiBold, color: AppColors.primary),
                  ),
                ],
              ),
              Text(post.createdAt.toString(),
                  style: AppTextStyle.small.copyWith(color: AppColors.lightGrey, fontWeight: AppFontWeight.rubikSemiBold)),
            ],
          ),
        ),
      ],
    );
  }
}
