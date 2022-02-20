import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/styles.dart';

import '../../../../../global/ui_helpers.dart';
import '../../../../firebase_authentication/data/models/user_profile.dart';
import '../../../../firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';
import '../../blocs/upload_image_bloc/upload_image_bloc.dart';

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
        iconTheme: IconThemeData(color: AppColors.darkGrey),
        backgroundColor: Colors.white,
        title: Text(
          'Create post',
          style: TextStyle(color: AppColors.darkGrey, fontWeight: AppFontWeight.rubikRegular),
        ),
        actions: [
          BlocBuilder<UserProfileBloc, UserProfileState>(
            builder: (context, state) {
              return state.when(
                  initial: () => Container(),
                  success: (profileStream) => StreamBuilder<UserProfile>(
                        stream: profileStream,
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
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
                  Text(
                    'Private',
                    style: AppTextStyle.medium.copyWith(color: AppColors.darkGrey),
                  ),
                  AppHorizontalSpace.tiny,
                  Icon(
                    Ionicons.caret_down_outline,
                    color: AppColors.darkGrey,
                    size: 15,
                  ),
                  AppHorizontalSpace.regular,
                  GestureDetector(
                    child: Icon(
                      Ionicons.location_outline,
                      color: AppColors.darkGrey,
                    ),
                    onTap: () {},
                  ),
                  Text(
                    'Location',
                    style: AppTextStyle.medium.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                  AppHorizontalSpace.regular,
                  Expanded(
                    child: BlocConsumer<UploadImageBloc, UploadImageState>(listener: (context, state) {
                      state.whenOrNull(cancelled: () {
                        const snackBar = SnackBar(
                          content: Text('Upload cancelled'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    }, builder: (context, state) {
                      return GestureDetector(
                        child: Row(
                          children: [
                            Icon(
                              Ionicons.image_outline,
                              color: state.maybeWhen(success: (image) => AppColors.accent, orElse: () => AppColors.darkGrey),
                            ),
                            AppHorizontalSpace.tiny,
                            Text(
                              'Photo',
                              style: AppTextStyle.medium
                                  .copyWith(color: state.maybeWhen(success: (image) => AppColors.accent, orElse: () => AppColors.darkGrey)),
                            ),
                          ],
                        ),
                        onTap: () => BlocProvider.of<UploadImageBloc>(context).add(UploadImageEvent.onUpload()),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: horizontalMargin),
                    child: Text(
                      'Post',
                      style: AppTextStyle.medium.copyWith(color: AppColors.primary, fontWeight: AppFontWeight.rubikMedium),
                    ),
                  )
                ],
              ),
            ),
            AppVerticalSpace.regular,
            BlocBuilder<UploadImageBloc, UploadImageState>(builder: (context, state) {
              return state.maybeWhen(
                  success: (image) => Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(customBorderRadius),
                                  color: AppColors.lightGrey,
                                  image: DecorationImage(image: FileImage(File(image.path)), fit: BoxFit.cover),
                                    boxShadow:[
                                      BoxShadow(
                                        color: AppColors.darkGrey.withOpacity(0.3),
                                        spreadRadius: 0.5,
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      )
                                    ]
                                ),
                              ),
                          AppVerticalSpace.large,
                        ],
                      ),
                      Positioned(
                        top: 10,
                        left: 25,
                        child: GestureDetector(
                          child: Container(
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: AppColors.darkGrey.withOpacity(0.2),
                              child: Icon(Ionicons.close, color: Colors.white, size: 17,),
                            ),
                          ),
                          onTap: () => BlocProvider.of<UploadImageBloc>(context).add(UploadImageEvent.onCancel()),
                        ),
                      ),
                    ],
                  ),
                  orElse: () => Container());
            }),
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(customBorderRadius), borderSide: BorderSide.none),
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
                style: TextStyle(
                  fontSize: textSizeMedium,
                  color: AppColors.bodyText,
                ),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  hintText: 'Content',
                  filled: false,
                  fillColor: AppColors.textFieldBG,
                  hintStyle: TextStyle(color: AppColors.lightGrey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(customBorderRadius), borderSide: BorderSide.none),
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
