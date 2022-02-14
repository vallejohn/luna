import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/post_item.dart';
import 'package:luna/router/app_router.dart';

import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../blocs/posts/posts_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) => state.when(
            initial: () => Center(
                  child: CircularProgressIndicator(),
                ),
            success: (postsStream) => StreamBuilder<QuerySnapshot>(
                stream: postsStream,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text('Something went wrong'),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text('Waiting'),
                    );
                  }

                  return ListView(
                    children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
                      Post post = Post.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                      post.copyWith(author: UserProfile.fromJson(post.author!.toJson()));
                      return PostItem(
                          title: post.title,
                          content: post.content,
                          commentCount: post.commentCount,
                          profileImageURL: post.author!.profileImageURL,
                          name: '${post.author!.firstname} ${post.author!.lastname}',
                          category: 'Technology',
                          datePosted: '7 mins ago',
                          onPostTap: () {
                            AutoRouter.of(context).push(PostDetailsRoute(post: post));
                          },
                          coverImageURL: post.coverImageURL);
                    }).toList(),
                  );
                }),
            empty: () => Center(
                  child: Container(),
                ),
            error: (message) => Center(
                  child: Text(message),
                )),
      ),
    );
  }
}
