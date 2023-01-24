import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/models/engagement.dart';
import 'package:luna/features/post/data/models/like.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';
import '../../../../data/models/post.dart';
import '../../../blocs/like/like_bloc.dart';

class EngagementTile extends StatelessWidget {
  final Post post;
  final Engagement engagement;
  const EngagementTile({Key? key, required this.post, required this.engagement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<LikeBloc, LikeState>(
          builder: (context, state) {

            bool isLiked = state.maybeWhen(liked: (isLiked) => isLiked, orElse: () => false);
            return Row(
              children: [
                IconButton(
                  onPressed: () => context.read<LikeBloc>().add(
                        LikeEvent.onAdd(
                          addLikeData: AddLikeData(
                            likeCount: engagement.likes,
                            postID: post.id,
                            like: Like(
                              userProfile: null
                            ),
                          ),
                        ),
                      ),
                  icon: Icon(isLiked? Ionicons.heart : Ionicons.heart_outline),
                  color: isLiked? AppColors.error : AppColors.electricBlue,
                  splashRadius: 25,
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
                AppHorizontalSpace.tiny,
                Text(
                  '${engagement.likes}',
                  style: AppTextStyle.medium.copyWith(
                    color: AppColors.electricBlue,
                    fontWeight: AppFontWeight.rubikMedium,
                  ),
                ),
              ],
            );
          },
        ),
        AppHorizontalSpace.regular,
        IconButton(
          onPressed: () {},
          icon: Icon(Ionicons.share_social_outline),
          color: AppColors.electricBlue,
          splashRadius: 25,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
        AppHorizontalSpace.tiny,
        Expanded(
          child: Text(
            '${engagement.shares}',
            style: AppTextStyle.medium.copyWith(
              color: AppColors.electricBlue,
              fontWeight: AppFontWeight.rubikMedium,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Ionicons.chatbubble_outline),
          color: AppColors.electricBlue,
          splashRadius: 25,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
        ),
        AppHorizontalSpace.tiny,
        Text(
          engagement.comments.toString(),
          style: AppTextStyle.medium.copyWith(
            color: AppColors.electricBlue,
            fontWeight: AppFontWeight.rubikMedium,
          ),
        ),
      ],
    );
  }
}
