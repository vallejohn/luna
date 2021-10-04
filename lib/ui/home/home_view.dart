import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/models/post.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/ui/home/home_viewmodel.dart';
import 'package:luna/ui/home/widgets/post_item.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Text(
              model.title,
              style: GoogleFonts.yesteryear(color: lPrimaryColor, fontSize: 45),
            ),
            actions: [
              IconButton(
                  onPressed: () => model.goToWritePost(),
                  splashRadius: 20,
                  icon: Icon(
                    Ionicons.create_outline,
                    color: lPrimaryColor,
                    size: 30,
                  )),
              Padding(
                padding: EdgeInsets.only(right: horizontalMargin),
                child: GestureDetector(
                  onTap: () => model.signOut(),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        '${model.userProfile.profileImageURL}'),
                  ),
                ),
              )
            ],
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: model.querySnapshot,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError)
                return Center(
                  child: Text('Something went wrong!'),
                );
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(
                  child: CircularProgressIndicator(),
                );

              return ListView(
                children: snapshot.data!.docs
                    .map((DocumentSnapshot documentSnapshot) {
                  Post post = Post.fromJson(
                      documentSnapshot.data()! as Map<String, dynamic>);
                  UserProfile author =
                      UserProfile.fromJson(post.author as Map<String, dynamic>);
                  return PostItem(
                    onPostTap: () => model.goToPost(documentSnapshot.id),
                    title: post.title.toString(),
                    category: 'Technology',
                    content: post.content.toString(),
                    commentCount: post.commentCount!,
                    recentComment: post.recentComment != null
                        ? Comment.fromJson(post.recentComment!)
                        : null,
                    datePosted: '7 hrs ago',
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpnTXjP7TSkmeA3OKB2zAwdnebWtg8n6ySYw&usqp=CAU',
                    name: '${author.firstname} ${author.lastname}',
                  );
                }).toList(),
              );
            },
          )),
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.initHomeView(),
    );
  }
}
