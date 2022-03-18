import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';
import '../../../../data/models/post.dart';

class SocialMediaElements extends StatelessWidget {
  final Post post;
  const SocialMediaElements({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('2.3k Likes', style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue, fontWeight: AppFontWeight.rubikMedium)),
        AppHorizontalSpace.regular,
        Expanded(
            child: Text('4.1k Shares',
                style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue, fontWeight: AppFontWeight.rubikMedium))),
        Icon(
          Ionicons.chatbubble_outline,
          color: AppColors.electricBlue,
        ),
        AppHorizontalSpace.tiny,
        Text(post.commentCount.toString(),
            style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue, fontWeight: AppFontWeight.rubikMedium)),
      ],
    );
  }
}
