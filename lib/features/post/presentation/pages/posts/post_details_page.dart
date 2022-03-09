import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

import '../../../../firebase_authentication/data/models/user_profile.dart';

class PostDetailsPage extends StatelessWidget {
  final Stream<DocumentSnapshot> postSnapshot;

  const PostDetailsPage({Key? key, required this.postSnapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StreamBuilder<DocumentSnapshot>(
            stream: postSnapshot,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                Logger().e('Snapshot post error');
                return Container();
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                Logger().w('Snapshot post waiting');
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              Post post = Post.fromJson(snapshot.data!.data() as Map<String, dynamic>).copyWith(id: snapshot.data!.id);
              UserProfile author = UserProfile.fromJson(post.author!);
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AppVerticalSpace.medium,
                    Center(
                      child: Text(
                        post.title,
                        style: AppTextStyle.large.copyWith(fontWeight: AppFontWeight.rubikSemiBold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    AppVerticalSpace.medium,
                    Row(
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
                    ),
                    AppVerticalSpace.medium,
                    Text(post.content, style: AppTextStyle.medium, textAlign: TextAlign.justify,)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
