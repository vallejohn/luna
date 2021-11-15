import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/models/post.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/ui/home/bloc/home_bloc.dart';
import 'package:luna/ui/home/widgets/post_item.dart';
import 'package:luna/ui/post/post_view.dart';

class PostsStream extends StatelessWidget {
  final Stream<QuerySnapshot> postsStream;

  const PostsStream({Key? key, required this.postsStream}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return StreamBuilder<QuerySnapshot>(
          stream: postsStream,
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError)
              return Center(
                child: Text('Something went wrong!'),
              );
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(
                child: CircularProgressIndicator(),
              );

            return ListView(
              children:
                snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
                Post post = Post.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                UserProfile author = UserProfile.fromJson(post.author as Map<String, dynamic>);
                return PostItem(
                  onPostTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return PostView(post: post);
                    }));
                  },
                  coverImageURL: post.coverImageURL!,
                  title: post.title.toString(),
                  category: 'Technology',
                  content: post.content.toString(),
                  commentCount: post.commentCount!,
                  recentComment: post.recentComment != null
                      ? Comment.fromJson(post.recentComment!)
                      : null,
                  datePosted: '7 hrs ago',
                  imageUrl: '${author.profileImageURL}',
                  name: '${author.firstname} ${author.lastname}',
                );
              }).toList(),
            );
          },
        );
      }
    );
  }
}
