import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/global/custom_widgets/shadowed_container.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:smooth_corner/smooth_corner.dart';

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
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SmoothRectangleBorder(
            smoothness: 1,
            borderRadius: BorderRadius.all(Radius.circular(26))
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 59,
              offset: Offset(0, 17),
              spreadRadius: -23,
            )
          ]
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
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
                          Text(
                            '$datePosted',
                            style: AppTextStyle.small.copyWith(color: AppColors.darkGrey, fontWeight: AppFontWeight.rubikLight),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2.7k',
                          style: AppTextStyle.medium.copyWith(color: AppColors.lightBlack, fontWeight: AppFontWeight.rubikMedium),
                        ),
                        AppHorizontalSpace.tiny,
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [.2, 1],
                            colors: [
                              Color(0xffBCC520),
                              Color(0xffD4BA20),
                            ],
                          ).createShader(bounds),
                          child: Icon(
                            Ionicons.heart_outline,
                            color: AppColors.primary,
                            size: 25,
                          ),
                        ),
                        AppHorizontalSpace.tiny,
                        Text(
                          '675',
                          style: AppTextStyle.medium.copyWith(color: AppColors.lightBlack, fontWeight: AppFontWeight.rubikMedium),
                        ),
                        AppHorizontalSpace.tiny,
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (Rect bounds) => const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [.2, 1],
                            colors: [
                              Color(0xffBCC520),
                              Color(0xffD4BA20),
                            ],
                          ).createShader(bounds),
                          child: Icon(
                            Ionicons.chatbubble_outline,
                            color: AppColors.primary,
                            size: 25,
                          ),
                        ),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: hPadding),
                    child: SmoothClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      smoothness: 1,
                      child: Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(image: CachedNetworkImageProvider(coverImageURL), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
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
            AppVerticalSpace.medium,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: hPadding),
              child: Text(
                title,
                style: AppTextStyle.medium.copyWith(color: AppColors.lightBlack, fontWeight: AppFontWeight.rubikMedium),
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
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15)),
                            elevation: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)) return 0;
                              return 15;
                            }),
                            shape: MaterialStateProperty.all(SmoothRectangleBorder(
                                smoothness: 1,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )),
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)) return Colors.grey.shade100;
                              return Colors.white;
                            }),
                            overlayColor: MaterialStateProperty.all(Colors.transparent),
                            splashFactory: InkSplash.splashFactory,
                            shadowColor: MaterialStateProperty.all(Colors.grey.shade50.withOpacity(0.5)),
                            foregroundColor: MaterialStateProperty.all(AppColors.lightBlack)
                        ),
                        onPressed: (){
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) => const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [.2, 1],
                                  colors: [
                                    Color(0xffBCC520),
                                    Color(0xffD4BA20),
                                  ],
                                ).createShader(bounds),
                                child: Icon(
                                  Ionicons.star_outline,
                                  color: AppColors.primary,
                                  size: 18,
                                ),
                              ),
                            ),
                            AppHorizontalSpace.small,
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) => LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [.1, .5, 1],
                                colors: [
                                  Colors.transparent,
                                  AppColors.lightGrey.withOpacity(0.2),
                                  Colors.transparent,
                                ],
                              ).createShader(bounds),
                              child: Container(
                                color: Colors.grey,
                                height: 25,
                                width: 1.5,
                              )
                            ),
                            AppHorizontalSpace.small,
                            Text('5.8'),
                          ],
                        )),
                  ),
                  AppHorizontalSpace.tiny,
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15)),
                            elevation: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)) return 0;
                              return 15;
                            }),
                            shape: MaterialStateProperty.all(SmoothRectangleBorder(
                                smoothness: 1,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            )),
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)) return Colors.grey.shade100;
                              return Colors.white;
                            }),
                            overlayColor: MaterialStateProperty.all(Colors.transparent),
                            splashFactory: InkSplash.splashFactory,
                          shadowColor: MaterialStateProperty.all(Colors.grey.shade50.withOpacity(0.5)),
                          foregroundColor: MaterialStateProperty.all(AppColors.lightBlack)
                        ),
                        onPressed: (){
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) => const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [.2, 1],
                                  colors: [
                                    Color(0xffBCC520),
                                    Color(0xffD4BA20),
                                  ],
                                ).createShader(bounds),
                                child: Icon(
                                  Ionicons.location_outline,
                                  color: AppColors.primary,
                                  size: 18,
                                ),
                              ),
                            ),
                            AppHorizontalSpace.small,
                            ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (Rect bounds) => LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [.1, .5, 1],
                                  colors: [
                                    Colors.transparent,
                                    AppColors.lightGrey.withOpacity(0.2),
                                    Colors.transparent,
                                  ],
                                ).createShader(bounds),
                                child: Container(
                                  color: Colors.grey,
                                  height: 25,
                                  width: 1.5,
                                )
                            ),
                            AppHorizontalSpace.small,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('El Nido Tour C'),
                                Text('Palawan, Philippines', style: AppTextStyle.small.copyWith(color: AppColors.lightGrey, fontWeight: AppFontWeight.rubikRegular),),
                              ],
                            ),
                          ],
                        )),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.resolveWith((states){
                          if(states.contains(MaterialState.pressed)) return 0;
                          return 15;
                        }),
                        shape: MaterialStateProperty.all(SmoothRectangleBorder(
                          smoothness: 1,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        backgroundColor: MaterialStateProperty.resolveWith((states){
                          if(states.contains(MaterialState.pressed)) return AppColors.primary[600];
                          return AppColors.primary;
                        }),
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: MaterialStateProperty.all(AppColors.primary[200])
                      ),
                      onPressed: onPostTap,
                      child: Row(
                        children: [
                          Text('View'),
                          AppHorizontalSpace.small,
                          Icon(
                            Ionicons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      )),
                  ),
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
