import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/global/custom_widgets/shadowed_container.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

class PostItem extends StatelessWidget {
  final String name;
  final String category;
  final String datePosted;
  final String title;
  final String coverImageURL;
  final String content;
  final int commentCount;
  final Comment? recentComment;
  final String profileImageURL;
  final VoidCallback onPostTap;

  const PostItem(
      {Key? key,
      required this.title,
      required this.content,
      required this.commentCount,
      this.recentComment,
      required this.profileImageURL,
      required this.name,
      required this.category,
      required this.datePosted,
      required this.onPostTap,
      required this.coverImageURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hPadding = 20;
    double vPadding = 10;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ShadowedContainer(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.only(left: hPadding, right: hPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(profileImageURL),
                    ),
                    AppHorizontalSpace.small,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
                            style: AppTextStyle.medium.copyWith(color: AppColors.lightBlack, fontWeight: AppFontWeight.rubikMedium),
                          ),
                          Row(
                            children: [
                              Text(
                                '$datePosted on ',
                                style: AppTextStyle.small.copyWith(color: AppColors.darkGrey, fontWeight: AppFontWeight.rubikLight),
                              ),
                              Text(
                                'Travel',
                                style: AppTextStyle.small.copyWith(color: AppColors.primary, fontWeight: AppFontWeight.rubikMedium),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Okinawa',
                          style: AppTextStyle.small.copyWith(
                            color: AppColors.darkGrey,
                            fontWeight: AppFontWeight.rubikLight,
                          ),
                        ),
                        AppHorizontalSpace.tiny,
                        Text(
                          'Japan',
                          style: AppTextStyle.medium.copyWith(color: AppColors.lightBlack, fontWeight: AppFontWeight.rubikMedium),
                        ),
                        AppHorizontalSpace.tiny,
                        Icon(
                          Ionicons.location_outline,
                          color: AppColors.primary,
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: coverImageURL.isNotEmpty,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(image: CachedNetworkImageProvider(coverImageURL), fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      constraints: BoxConstraints(minHeight: 50),
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            ),
                          ),
                        ),
                        onPressed: onPostTap,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
                          child: Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    title,
                                    style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikRegular),
                                  ),
                                ),
                              ),
                              AppHorizontalSpace.medium,
                              Icon(
                                Ionicons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              visible: coverImageURL.isEmpty,
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    ),
                  ),
                ),
                onPressed: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(minHeight: 50),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
                    child: Text(
                      title,
                      style: AppTextStyle.large.copyWith(color: AppColors.darkGrey, fontWeight: AppFontWeight.rubikSemiBold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
              child: Text(
                content,
                style: AppTextStyle.medium.copyWith(color: AppColors.darkGrey),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
            ),
            AppVerticalSpace.regular,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding),
              child: Row(
                children: [
                  Text('2.3k Likes', style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue, fontWeight: AppFontWeight.rubikMedium)),
                  AppHorizontalSpace.regular,
                  Expanded(
                      child: Text('4.1k Shares',
                          style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue, fontWeight: AppFontWeight.rubikMedium))),
                  Icon(
                    Ionicons.chatbubble_outline,
                    color: AppColors.electricBlue,
                    size: 20,
                  ),
                  AppHorizontalSpace.tiny,
                  Text('$commentCount', style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue, fontWeight: AppFontWeight.rubikMedium)),
                ],
              ),
            ),
            AppVerticalSpace.regular,
            if (recentComment != null)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage('${UserProfile.fromJson(recentComment!.userProfile!).profileImageURL}'),
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
                                '${UserProfile.fromJson(recentComment!.userProfile!).firstname} ${UserProfile.fromJson(recentComment!.userProfile!).lastname}',
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
                            '${recentComment!.body}',
                            style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            if (recentComment != null) AppVerticalSpace.small,
          ],
        ),
      ),
    );
  }
}
