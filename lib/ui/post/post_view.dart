import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:logger/logger.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/features/post/data/models/post.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/ui/post/bloc/post_bloc.dart';

class PostView extends StatelessWidget {
  final Post post;
  const PostView({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();
    return BlocBuilder<PostBloc, PostState>(builder: (context, state) {
      return state.when(
          initial: (currentUser) {
            Logger().i('Post view: ${post.title}');
            UserProfile author = UserProfile.fromJson(post.author!);
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 350,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(image: NetworkImage('${post.coverImageURL}'), fit: BoxFit.cover),
                            ),
                          ),
                          ClipRRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                              child: Container(
                                color: Colors.black.withOpacity(0.4),
                                child: Padding(
                                  padding: EdgeInsets.only(left: horizontalMargin, right: horizontalMargin, top: 40, bottom: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                          onTap: () {}, //navigate back
                                          child: Icon(
                                            Ionicons.arrow_back,
                                            color: Colors.white,
                                          )),
                                      horizontalSpaceRegular,
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage: NetworkImage(author.profileImageURL!),
                                      ),
                                      horizontalSpaceSmall,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${author.firstname}',
                                              style: medium.copyWith(color: Colors.white, fontWeight: rubikMedium),
                                            ),
                                            Text('7 mins ago', style: smallTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight)),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Okinawa',
                                              style: smallTextStyle.copyWith(
                                                color: Colors.white,
                                                fontWeight: rubikLight,
                                              )),
                                          horizontalSpaceTiny,
                                          Text(
                                            'Japan',
                                            style: medium.copyWith(color: Colors.white, fontWeight: rubikMedium),
                                          ),
                                          horizontalSpaceTiny,
                                          Icon(Ionicons.location_outline, color: Colors.white, size: 15)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              post.title.toString(),
                              style: large.copyWith(
                                fontWeight: rubikMedium,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      verticalSpaceLarge,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                        child: Text(
                          '${post.content.toString()}',
                          style: medium,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      verticalSpaceRegular,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                        child: Row(
                          children: [
                            Text('2.3k Likes', style: medium.copyWith(color: lOtherColor, fontWeight: rubikMedium)),
                            horizontalSpaceRegular,
                            Expanded(child: Text('4.1k Shares', style: medium.copyWith(color: lOtherColor, fontWeight: rubikMedium))),
                            Icon(
                              Ionicons.chatbubble_outline,
                              color: lOtherColor,
                            ),
                            horizontalSpaceTiny,
                            Text(post.commentCount.toString(), style: medium.copyWith(color: lOtherColor, fontWeight: rubikMedium)),
                          ],
                        ),
                      ),
                      verticalSpaceRegular,
                      StreamBuilder<QuerySnapshot>(
                        stream: model.commentQuerySnapshot,
                        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError)
                            return Center(
                              child: Text('Something went wrong!'),
                            );
                          if (snapshot.connectionState == ConnectionState.waiting)
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          if (snapshot.data!.size == 0)
                            return Center(
                              child: Text(
                                'No comments',
                                style: mediumTextStyle.copyWith(color: lLightGrey),
                              ),
                            );

                          return Column(
                            children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot) {
                              Comment comment = Comment.fromJson(documentSnapshot.data()! as Map<String, dynamic>);
                              UserProfile user = UserProfile.fromJson(comment.userProfile!);
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 14,
                                      backgroundImage: NetworkImage('${user.profileImageURL}'),
                                    ),
                                    horizontalSpaceSmall,
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '${user.firstname} ${user.lastname}',
                                                style: mediumTextStyle.copyWith(fontWeight: rubikMedium),
                                              ),
                                              horizontalSpaceTiny,
                                              Text(
                                                '5 mins ago',
                                                style: smallTextStyle.copyWith(color: lLightGrey),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '${comment.body}',
                                            style: mediumTextStyle.copyWith(color: lOtherColor),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          );
                        },
                      ), // Stream Builder for comments view. Should change to view comments button


                      verticalSpaceRegular,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                        child: Stack(
                          children: [
                            TextFormField(
                              controller: commentController,
                              textInputAction: TextInputAction.done,
                              style: TextStyle(fontSize: textSizeMedium, color: lBodyTextColor),
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 50, top: 10, bottom: 10),
                                hintText: 'Your thoughts here, ${currentUser.firstname}',
                                filled: true,
                                fillColor: lTFBackgroundColor,
                                hintStyle: TextStyle(color: lOtherColor),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(customBorderRadius), borderSide: BorderSide.none),
                              ),
                            ),
                            Positioned(
                              left: 12,
                              top: 10,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: NetworkImage('${currentUser.profileImageURL}'),
                              ),
                            ),
                            Positioned(
                                right: 12,
                                top: 10,
                                child: GestureDetector(
                                    onTap: (){} /*=> model.addComment(commentController.text.toString())*/,
                                    child: Icon(
                                      Ionicons.add,
                                      color: lOtherColor,
                                    )))
                          ],
                        ),
                      ),
                      verticalSpaceRegular,
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }
}
