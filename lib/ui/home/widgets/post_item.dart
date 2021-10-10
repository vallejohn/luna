import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/custom_widgets/shadowed_container.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/models/user_profile.dart';

class PostItem extends StatelessWidget {
  final String name;
  final String category;
  final String datePosted;
  final String title;
  final String coverImageURL;
  final String content;
  final int commentCount;
  final Comment? recentComment;
  final String imageUrl;
  final VoidCallback onPostTap;

  const PostItem(
      {Key? key,
      required this.title,
      required this.content,
      required this.commentCount,
      this.recentComment,
      required this.imageUrl,
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
            Stack(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage('$coverImageURL'),
                        fit: BoxFit.cover),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                    child: Container(
                      height: 50,
                      color: Colors.black.withOpacity(0.4),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: hPadding, right: hPadding),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(imageUrl),
                            ),
                            horizontalSpaceSmall,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    name,
                                    style: mediumTextStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: rubikMedium),
                                  ),
                                  Text(
                                    datePosted,
                                    style: smallTextStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: rubikLight),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Okinawa',
                                  style: smallTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: rubikLight,
                                  ),
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  'Japan',
                                  style: mediumTextStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: rubikMedium),
                                ),
                                horizontalSpaceTiny,
                                Icon(
                                  Ionicons.location_outline,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: InkWell(
                    onTap: onPostTap,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      constraints: BoxConstraints(minHeight: 50),
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: hPadding, vertical: vPadding),
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  title,
                                  style: mediumTextStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: rubikRegular),
                                ),
                              ),
                            ),
                            horizontalSpaceMedium,
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
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: hPadding, vertical: vPadding),
              child: Text(
                content,
                style: mediumTextStyle.copyWith(color: lDarkGreyColor),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding),
              child: Row(
                children: [
                  Text('2.3k Likes',
                      style: mediumTextStyle.copyWith(
                          color: lOtherColor, fontWeight: rubikMedium)),
                  horizontalSpaceRegular,
                  Expanded(
                      child: Text('4.1k Shares',
                          style: mediumTextStyle.copyWith(
                              color: lOtherColor, fontWeight: rubikMedium))),
                  Icon(
                    Ionicons.chatbubble_outline,
                    color: lOtherColor,
                  ),
                  horizontalSpaceTiny,
                  Text('$commentCount',
                      style: mediumTextStyle.copyWith(
                          color: lOtherColor, fontWeight: rubikMedium)),
                ],
              ),
            ),
            verticalSpaceRegular,
            if (recentComment != null)
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalMargin, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                          '${UserProfile.fromJson(recentComment!.userProfile!).profileImageURL}'),
                    ),
                    horizontalSpaceSmall,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${UserProfile.fromJson(recentComment!.userProfile!).firstname} ${UserProfile.fromJson(recentComment!.userProfile!).lastname}',
                                style: mediumTextStyle.copyWith(
                                    fontWeight: rubikMedium),
                              ),
                              horizontalSpaceTiny,
                              Text(
                                '5 mins ago',
                                style:
                                    smallTextStyle.copyWith(color: lLightGrey),
                              ),
                            ],
                          ),
                          Text(
                            '${recentComment!.body}',
                            style: mediumTextStyle.copyWith(color: lOtherColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            if (recentComment != null) verticalSpaceSmall,
          ],
        ),
      ),
    );
  }
}
