import 'package:flutter/material.dart';
import 'package:luna/features/post/data/models/post.dart';

class PostDetailsPage extends StatelessWidget {

  final Post post;

  const PostDetailsPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(child: Text(post.title),),
    );
  }
}
