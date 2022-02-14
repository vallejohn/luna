import 'package:flutter/material.dart';

class PostDetailsPage extends StatelessWidget {

  final String postID;

  const PostDetailsPage({Key? key, required this.postID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(child: Text(postID),),
    );
  }
}
