import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/post/presentation/blocs/comment/comment_bloc.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/author_information.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/comment_item.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/comment_text_field.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/social_media_elements.dart';
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
                    AuthorInformation(author: author),
                    AppVerticalSpace.medium,
                    Text(
                      post.content,
                      style: AppTextStyle.medium,
                      textAlign: TextAlign.justify,
                    ),
                    AppVerticalSpace.medium,
                    SocialMediaElements(post: post),
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
                                    if (snapshot.connectionState == ConnectionState.waiting) {
                                      return Center(child: CircularProgressIndicator());
                                    }

                                    return Column(
                                      children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
                                        Comment comment = Comment.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                                        UserProfile user = UserProfile.fromJson(comment.userProfile!);
                                        return CommentItem(user: user, comment: comment);
                                      }).toList(),
                                    );
                                  });
                            },
                            error: () => Center(
                                  child: Text('Error'),
                                ));
                      },
                    ),
                    AppVerticalSpace.medium,
                    CommentTextField(
                        controller: commentController,
                        onAddComment: () => BlocProvider.of<CommentBloc>(context).add(CommentEvent.onAdd(
                            addCommentData: AddCommentData(
                                comment: Comment(
                                    userProfile: BlocProvider.of<UserProfileBloc>(context).state.whenOrNull(withData: (data) => data.user.toJson()),
                                    body: commentController.text),
                                commentCount: 0,
                                postID: post.id))))
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
