import 'package:flutter/material.dart%20';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';

class AuthorInformation extends StatelessWidget {
  final UserProfile author;
  const AuthorInformation({Key? key, required this.author}) : super(key: key);

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
              Text('7 mins ago',
                  style: AppTextStyle.small.copyWith(color: AppColors.lightGrey, fontWeight: AppFontWeight.rubikSemiBold)),
            ],
          ),
        ),
      ],
    );
  }
}
