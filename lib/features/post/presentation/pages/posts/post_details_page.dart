import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/features/post/data/models/engagement.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/post/presentation/blocs/comment/comment_bloc.dart';
import 'package:luna/features/post/presentation/blocs/comment_text_field_bloc/comment_text_field_bloc.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/author_information.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/comment_item.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/comment_text_field.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/social_media_elements.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

import '../../../../../core/utils/app_logger.dart';
import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';

class PostDetailsPage extends StatelessWidget {
  final Stream<DocumentSnapshot> postSnapshot;

  const PostDetailsPage({Key? key, required this.postSnapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();
    BlocProvider.of<CommentTextFieldBloc>(context).add(CommentTextFieldEvent.started());

    var log = AppLogger('PostDetailsPage');

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: StreamBuilder<DocumentSnapshot>(
            stream: postSnapshot,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                log.e('Snapshot post error');
                return Container();
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                log.w('Snapshot post waiting');
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              Post post = Post.fromJson(snapshot.data!.data() as Map<String, dynamic>).copyWith(id: snapshot.data!.id);
              Engagement engagement = Engagement.fromJson(post.engagement!);
              UserProfile author = UserProfile.fromJson(post.author!);

              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          AppVerticalSpace.medium,
                          Center(
                            child: Text(
                              post.title,
                              style: GoogleFonts.merriweather().copyWith(fontSize: AppFontSize.large, fontWeight: AppFontWeight.rubikSemiBold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          AppVerticalSpace.medium,
                          AuthorInformation(author: author),
                          AppVerticalSpace.medium,
                          SelectableText(
                            post.content,
                            style: GoogleFonts.merriweather().copyWith(fontSize: AppFontSize.medium, color: AppColors.bodyText),
                            textAlign: TextAlign.justify,
                          ),
                          AppVerticalSpace.small,
                          SocialMediaElements(post: post, engagement: engagement),
                          AppVerticalSpace.massive,
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: AppColors.lightGrey.withOpacity(0.3), blurRadius: 2, spreadRadius: 2, offset: Offset(0, 1))]),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: CommentTextField(
                                controller: commentController,
                                onAddComment: (){
                                  BlocProvider.of<CommentBloc>(context).add(CommentEvent.onAdd(
                                      addCommentData: AddCommentData(
                                          comment: Comment(
                                              userProfile:
                                              BlocProvider.of<UserProfileBloc>(context).state.whenOrNull(withData: (data) => data.user.toJson()),
                                              body: commentController.text),
                                          commentCount: engagement.comments,
                                          postID: post.id)));
                                  commentController.clear();
                                }),
                          ),
                          AppHorizontalSpace.tiny,
                          ClipRRect(
                            borderRadius: BorderRadius.circular(customBorderRadius),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: AppColors.electricBlue.withOpacity(0.05),
                              child: TextButton(
                                  style: TextButton.styleFrom(primary: AppColors.electricBlue, padding: EdgeInsets.zero),
                                  onPressed: () {

                                    BlocProvider.of<CommentBloc>(context).add(CommentEvent.onFetchPostComments(postID: post.id));

                                    showModalBottomSheet<void>(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Column(
                                          children: [
                                            AppVerticalSpace.small,
                                            Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 20),
                                                  child: Icon(Ionicons.heart_outline),
                                                ),
                                                AppHorizontalSpace.tiny,
                                                Text(
                                                  '34k',
                                                  style: AppTextStyle.small,
                                                ),
                                                AppHorizontalSpace.small,
                                                Expanded(
                                                  child: Text(
                                                    '${engagement.comments} Comments',
                                                    style: AppTextStyle.small
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(right: 10),
                                                  child: IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Ionicons.resize_outline),
                                                    color: AppColors.lightGrey.withOpacity(0.5),
                                                    splashRadius: 25,
                                                    padding: EdgeInsets.zero,
                                                    constraints: BoxConstraints(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            AppVerticalSpace.small,
                                            Expanded(
                                              child: BlocBuilder<CommentBloc, CommentState>(
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
                                                            if (snapshot.connectionState == ConnectionState.waiting) {
                                                              return Center(child: CircularProgressIndicator());
                                                            }

                                                            return ListView.separated(
                                                              itemCount: snapshot.data!.docs.length,
                                                              itemBuilder: (context, index) {
                                                                Comment comment =
                                                                    Comment.fromJson(snapshot.data!.docs[index].data() as Map<String, dynamic>);
                                                                UserProfile user = UserProfile.fromJson(comment.userProfile!);

                                                                return Container(
                                                                  margin: EdgeInsets.only(left: 20, right: 20),
                                                                  child: CommentItem(user: user, comment: comment),
                                                                );
                                                              },
                                                              separatorBuilder: (BuildContext context, int index) => Container(
                                                                margin: EdgeInsets.symmetric(horizontal: 20),
                                                                width: MediaQuery.of(context).size.width,
                                                                height: 1,
                                                                color: AppColors.electricBlue.withOpacity(0.05),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                      error: () => Center(
                                                            child: Text('Error'),
                                                          ));
                                                },
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Ionicons.chatbubble_ellipses_outline,
                                    color: AppColors.electricBlue,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
