import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/features/post/data/models/post.dart';

import '../../blocs/posts/posts_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts'),),
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) => state.when(
            initial: () => Center(child: CircularProgressIndicator(),),
            success: (postsStream) => StreamBuilder<QuerySnapshot>(
              stream: postsStream,
                builder: (context, snapshot){
                  if(snapshot.hasError){
                    return Center(child: Text('Something went wrong'),);
                  }
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Center(child: Text('Waiting'),);
                  }

                  return ListView(
                    children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot){
                     Post post = Post.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                      return Text(post.title);
                    }).toList(),
                  );
                }),
            empty: () => Center(child: Container(),),
            error: (message) => Center(child: Text(message),)
        ),
      ),
    );
  }
}
