import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/models/comment.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/ui/post/post_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController commentController = TextEditingController();
    return ViewModelBuilder<PostViewModel>.reactive(
        viewModelBuilder: () => PostViewModel(),
        onModelReady: (model) => model.initPost(context),
        builder: (context, model, child) => Scaffold(
          body: SafeArea(
            child: !model.isBusy ? SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    verticalSpaceLarge,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                    child: Align(
                      alignment: Alignment.center,
                        child: Text(model.post.title.toString(),
                          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold, fontSize: 20),)
                    ),
                  ),
                    verticalSpaceLarge,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundImage: NetworkImage('${model.author.profileImageURL}'),
                          ),
                          horizontalSpaceSmall,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  children: [
                                    Text('${model.author.firstname} ${model.author.lastname} ', style: mediumTextStyle.copyWith(fontWeight: rubikMedium),),
                                    Text(' on ', style: mediumTextStyle.copyWith(color: lLightGrey),),
                                    Text('Technology', style: mediumTextStyle.copyWith(color: lPrimaryColor, fontWeight: rubikMedium),),
                                  ],
                                ),
                                Text('7 mins ago', style: smallTextStyle.copyWith(color: lLightGrey),),
                              ],
                            ),
                          ),
                          Icon(Ionicons.heart_outline, size: 35, color: lDarkGreyColor,),
                          horizontalSpaceSmall,
                          Icon(Ionicons.share_outline, size: 35, color: lDarkGreyColor,),
                        ],
                      ),
                    ),
                    verticalSpaceRegular,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                      child: Text(model.post.content.toString(), style: GoogleFonts.merriweather(fontSize: 16, wordSpacing: 2,), textAlign: TextAlign.justify,),
                    ),
                    verticalSpaceRegular,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
                      child: Row(
                        children: [
                          Text('2.3k Likes', style: mediumTextStyle.copyWith(color: lOtherColor, fontWeight: rubikMedium)),
                          horizontalSpaceRegular,
                          Expanded(child: Text('4.1k Shares', style: mediumTextStyle.copyWith(color: lOtherColor, fontWeight: rubikMedium))),
                          Icon(Ionicons.chatbubble_outline, color: lOtherColor,),
                          horizontalSpaceTiny,
                          Text(model.post.commentCount.toString(), style: mediumTextStyle.copyWith(color: lOtherColor, fontWeight: rubikMedium)),
                        ],
                      ),
                    ),
                    verticalSpaceRegular,
                    StreamBuilder<QuerySnapshot>(
                      stream: model.commentQuerySnapshot,
                      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                        if(snapshot.hasError) return Center(child: Text('Something went wrong!'),);
                        if(snapshot.connectionState == ConnectionState.waiting) return Center(child: CircularProgressIndicator(),);
                        if(snapshot.data!.size == 0) return Center(child: Text('No comments', style: mediumTextStyle.copyWith(color: lLightGrey),),);

                        return Column(
                          children: snapshot.data!.docs.map((DocumentSnapshot documentSnapshot){
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
                                            Text('${user.firstname} ${user.lastname}', style: mediumTextStyle.copyWith(fontWeight: rubikMedium),),
                                            horizontalSpaceTiny,
                                            Text('5 mins ago', style: smallTextStyle.copyWith(color: lLightGrey),),
                                          ],
                                        ),
                                        Text('${comment.body}', style: mediumTextStyle.copyWith(color: lOtherColor),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }).toList(),
                        );
                        },
                    ),
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
                              hintText: 'Your thoughts here, ${model.currentUser.firstname}',
                              filled: true,
                              fillColor: lTFBackgroundColor,
                              hintStyle: TextStyle(color: lOtherColor),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(customBorderRadius),
                                  borderSide: BorderSide.none
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            top: 10,
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: NetworkImage('${model.currentUser.profileImageURL}'),
                            ),
                          ),
                          Positioned(
                            right: 12,
                            top: 10,
                            child: GestureDetector(
                              onTap: () => model.addComment(commentController.text.toString()),
                                child: Icon(Ionicons.add, color: lOtherColor,))
                          )
                        ],
                      ),
                    ),
                    verticalSpaceRegular,
                  ],
                ),
              ),
            ) : Center(child: CircularProgressIndicator(),),
          ),
        ));
  }
}
