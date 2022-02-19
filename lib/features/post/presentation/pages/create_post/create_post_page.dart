import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/styles.dart';

import '../../../../../global/ui_helpers.dart';
import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController postTitleController = TextEditingController();
    TextEditingController contentController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(
            color: AppColors.darkGrey
        ),
        backgroundColor: Colors.white,
        title: Text('Create post', style: TextStyle(color: AppColors.darkGrey, fontWeight: AppFontWeight.rubikRegular),),
        actions: [
          BlocBuilder<UserProfileBloc, UserProfileState>(
            builder: (context, state) {
              return state.when(
                  initial: () => Container(),
                  success: (profileStream) => StreamBuilder<UserProfile>(
                    stream: profileStream,
                    builder: (context, snapshot) {
                      if(snapshot.hasError){
                        return Center(
                          child: Text('Error'),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: Text('Waiting'),
                        );
                      }

                      UserProfile profile = UserProfile.fromJson(snapshot.data!.toJson());

                      return Padding(
                        padding: EdgeInsets.only(right: horizontalMargin),
                        child: GestureDetector(
                          onTap: () {}, // goto profile,
                          onLongPress: () {}, // signout,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(profile.profileImageURL),
                          ),
                        ),
                      );
                    },
                  ));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppVerticalSpace.regular,
            Padding(
              padding: const EdgeInsets.only(left: horizontalMargin),
              child: Row(
                children: [
                  Text('Private', style: AppTextStyle.medium.copyWith(color: AppColors.darkGrey),),
                  AppHorizontalSpace.tiny,
                  Icon(Ionicons.caret_down_outline, color: AppColors.darkGrey, size: 15,),
                  AppHorizontalSpace.regular,
                  GestureDetector(
                    child: Icon(Ionicons.location_outline, color: AppColors.darkGrey,),
                    onTap: () {},
                  ),
                  Text('Location', style: AppTextStyle.medium.copyWith(color: AppColors.darkGrey,),),
                  AppHorizontalSpace.regular,
                  GestureDetector(
                    //child: Icon(Ionicons.image, color: model.postImageCover == null ? AppColors.darkGrey : AppColors.primary,),
                    child: Icon(Ionicons.image, color: AppColors.darkGrey,),
                    onTap: () {},
                  ),
                  AppHorizontalSpace.tiny,
                  Expanded(child: Text('Photos', style: AppTextStyle.medium.copyWith(color: AppColors.darkGrey),)),
                  Padding(
                    padding: const EdgeInsets.only(right: horizontalMargin),
                    child: Text('Post', style: AppTextStyle.medium.copyWith(color: AppColors.primary, fontWeight: AppFontWeight.rubikMedium),),
                    /*child: model.isBusy
                        ? Container(height: 15, width: 15, child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.primary,))
                        : GestureDetector(
                        onTap: () => model.addPost(titleController.text.toString(), contentController.text.toString()),
                        child: Text('Post', style: AppTextStyle.medium.copyWith(color: AppColors.primary, fontWeight: rubikMedium),)),*/
                  )
                ],
              ),
            ),
            AppVerticalSpace.regular,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
              child: TextFormField(
                controller: postTitleController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: textSizeMedium, color: AppColors.bodyText),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Title',
                  filled: true,
                  fillColor: AppColors.textFieldBG,
                  hintStyle: TextStyle(color: AppColors.lightGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(customBorderRadius),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            AppVerticalSpace.regular,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
              child: TextFormField(
                controller: contentController,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: null,
                textInputAction: TextInputAction.newline,
                style: TextStyle(fontSize: textSizeMedium, color: AppColors.bodyText,),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  hintText: 'Content',
                  filled: false,
                  fillColor: AppColors.textFieldBG,
                  hintStyle: TextStyle(color: AppColors.lightGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(customBorderRadius),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            AppVerticalSpace.regular,
          ],
        ),
      ),
    );
  }
}
