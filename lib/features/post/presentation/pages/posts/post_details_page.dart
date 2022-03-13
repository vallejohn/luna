import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:logger/logger.dart';
import 'package:luna/bloc_providers.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/post/presentation/blocs/comment/comment_bloc.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';

class PostDetailsPage extends StatelessWidget {
  final Stream<DocumentSnapshot> postSnapshot;

  const PostDetailsPage({Key? key, required this.postSnapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
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

              BlocProvider.of<CommentBloc>(context).add(CommentEvent.onFetchPostComments(postID: post.id));

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
                    Text(
                      post.content,
                      style: AppTextStyle.medium,
                      textAlign: TextAlign.justify,
                    ),
                    AppVerticalSpace.medium,
                    Row(
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
                    ),
                    AppVerticalSpace.medium,
                    BlocBuilder<CommentBloc, CommentState>(
                      builder: (context, state) {
                        return state.when(
                            initial: () => Center(
                                  child: CircularProgressIndicator(),
                                ),
                            success: (commentStream) {
                              return StreamBuilder<QuerySnapshot>(
                                stream: commentStream,
                                builder: (context, snapshot) {

                                  if (snapshot.hasError)
                                    return Center(
                                      child: Text('Something went wrong!'),
                                    );
                                  if (snapshot.connectionState == ConnectionState.waiting){
                                    return Center(
                                        child: CircularProgressIndicator()
                                    );
                                  }

                                  return Column(
                                    children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
                                      Comment comment = Comment.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                                      UserProfile user = UserProfile.fromJson(comment.userProfile!);
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 5),
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
                                                  Text(
                                                    comment.body!,
                                                    style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  );
                                }
                              );
                            },
                            error: () => Center(
                                  child: Text('Error'),
                                ));
                      },
                    ),
                    AppVerticalSpace.medium,
                    Stack(
                      children: [
                        TextFormField(
                          controller: commentController,
                          textInputAction: TextInputAction.done,
                          style: TextStyle(fontSize: textSizeMedium, color: AppColors.bodyText),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 50, top: 10, bottom: 10),
                            hintText: 'Your thoughts here, '
                                '${BlocProvider.of<UserProfileBloc>(context).state.maybeWhen(
                                withData: (data) => data.user.firstname,
                                orElse: () => '')}',
                            filled: true,
                            fillColor: AppColors.textFieldBG,
                            hintStyle: TextStyle(color: AppColors.electricBlue.withOpacity(0.5)),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(customBorderRadius), borderSide: BorderSide.none),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          top: 10,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage('${BlocProvider.of<UserProfileBloc>(context).state.maybeWhen(
                                withData: (data) => data.user.profileImageURL,
                                orElse: () => '')}'),
                          ),
                        ),
                        Positioned(
                            right: 12,
                            top: 10,
                            child: GestureDetector(
                                onTap: () => BlocProvider.of<CommentBloc>(context).add(CommentEvent.onAdd(addCommentData: AddCommentData(
                                  comment: Comment(
                                    userProfile: BlocProvider.of<UserProfileBloc>(context).state.whenOrNull(
                                        withData: (data) => data.user.toJson()),
                                    body: commentController.text
                                  ),
                                  commentCount: 0,
                                  postID: post.id
                                ))),
                                child: Icon(
                                  Ionicons.add,
                                  color: AppColors.electricBlue,
                                )))
                      ],
                    ),
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
