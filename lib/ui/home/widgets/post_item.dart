import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  final String content;
  final int commentCount;
  final Comment? recentComment;
  final String imageUrl;
  final VoidCallback onPostTap;

  const PostItem({Key? key,
    required this.title,
    required this.content,
    required this.commentCount,
    this.recentComment,
    required this.imageUrl,
    required this.name,
    required this.category,
    required this.datePosted,
    required this.onPostTap
  }) : super(key: key);

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
            Padding(
              padding: EdgeInsets.only(left: hPadding, right: hPadding, top: vPadding),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  horizontalSpaceSmall,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(name, style: mediumTextStyle.copyWith(fontWeight: rubikMedium),),
                            Text(' on ', style: mediumTextStyle.copyWith(color: lLightGrey),),
                            Text(category, style: mediumTextStyle.copyWith(color: lPrimaryColor, fontWeight: rubikMedium),),
                          ],
                        ),
                        Text(datePosted, style: smallTextStyle.copyWith(color: lLightGrey),),
                      ],
                    ),
                  ),
                  Icon(Ionicons.heart_outline, size: 35, color: lDarkGreyColor,),
                  horizontalSpaceSmall,
                  Icon(Ionicons.share_outline, size: 35, color: lDarkGreyColor,),
                ],
              ),
            ),
            verticalSpaceSmall,
            ClipRect(
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage('https://images.squarespace-cdn.com/content/v1/55d64111e4b0a'
                            '862eed6a419/1524007829841-21C3C49BS8T0YQGZ3X7I/new-year-travel.jpg'),
                        fit: BoxFit.fill
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: GestureDetector(
                            onTap: onPostTap,
                            child: Text(title, style: GoogleFonts.merriweather(fontSize: 17, color: Colors.white),)),
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.0),
                            ],
                            begin: FractionalOffset(0.0, 1.0),
                            end: FractionalOffset(0.0, 0.0),
                            stops: [0.0, 2.0],
                            tileMode: TileMode.clamp
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: GestureDetector(
                            onTap: onPostTap,
                            child: Text(title, style: GoogleFonts.merriweather(fontSize: 17, color: Colors.white),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
              child: Text(content, style: GoogleFonts.merriweather(color: lDarkGreyColor), maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding),
              child: Row(
                children: [
                  Text('2.3k Likes', style: mediumTextStyle.copyWith(color: lOtherColor, fontWeight: rubikMedium)),
                  horizontalSpaceRegular,
                  Expanded(child: Text('4.1k Shares', style: mediumTextStyle.copyWith(color: lOtherColor, fontWeight: rubikMedium))),
                  Icon(Ionicons.chatbubble_outline, color: lOtherColor,),
                  horizontalSpaceTiny,
                  Text('$commentCount', style: mediumTextStyle.copyWith(color: lOtherColor, fontWeight: rubikMedium)),
                ],
              ),
            ),
            verticalSpaceRegular,
            if(recentComment != null)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage('https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
                    ),
                    horizontalSpaceSmall,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('${UserProfile.fromJson(recentComment!.userProfile!).firstname} ${UserProfile.fromJson(recentComment!.userProfile!).lastname}',
                                style: mediumTextStyle.copyWith(fontWeight: rubikMedium),),
                              horizontalSpaceTiny,
                              Text('5 mins ago', style: smallTextStyle.copyWith(color: lLightGrey),),
                            ],
                          ),
                          Text('${recentComment!.body}', style: mediumTextStyle.copyWith(color: lOtherColor),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            if(recentComment != null)
              verticalSpaceSmall,
          ],
        ),
      ),
    );
  }
}
