import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/post/presentation/pages/posts/widgets/post_item.dart';
import 'package:luna/features/post/presentation/pages/widgets/profile_photo.dart';
import 'package:luna/router/app_router.dart';

import '../../../../../global/styles.dart';
import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../blocs/posts/posts_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Luna',
          style: GoogleFonts.yesteryear(color: AppColors.primary, fontSize: 45),
        ),
        actions: [
          IconButton(
              onPressed: () => AutoRouter.of(context).push(CreatePostRoute()), // goto write post,
              splashRadius: 20,
              icon: Icon(
                Ionicons.create_outline,
                color: AppColors.primary,
                size: 30,
              )),
          ProfilePhoto()
        ],
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
                      child: CircularProgressIndicator(),
                    );
                  }

                  return ListView(
                    children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
                      Post post = Post.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                      UserProfile author = UserProfile.fromJson(post.author!);
                      return PostItem(
                          title: post.title,
                          content: post.content,
                          commentCount: post.commentCount,
                          profileImageURL: author.profileImageURL,
                          name: '${author.firstname} ${author.lastname}',
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
