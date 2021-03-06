import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/custom_widgets/shadowed_text_button.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/write_post/write_post_viewmodel.dart';
import 'package:stacked/stacked.dart';

class WritePostView extends StatelessWidget {
  const WritePostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();

    return ViewModelBuilder<WritePostViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          iconTheme: IconThemeData(
            color: lDarkGreyColor
          ),
          backgroundColor: Colors.white,
          title: Text(model.title, style: TextStyle(color: lDarkGreyColor, fontWeight: rubikRegular),),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: horizontalMargin),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/9c/91/e0/9c91e06b6538e8bb941314a25207835f.jpg'),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.only(left: horizontalMargin),
                child: Row(
                  children: [
                    Text('Private', style: mediumTextStyle.copyWith(color: lDarkGreyColor),),
                    horizontalSpaceTiny,
                    Icon(Ionicons.caret_down_outline, color: lDarkGreyColor, size: 15,),
                    horizontalSpaceRegular,
                    Icon(Ionicons.image, color: lDarkGreyColor,),
                    horizontalSpaceTiny,
                    Expanded(child: Text('Photos', style: mediumTextStyle.copyWith(color: lDarkGreyColor),)),
                    Padding(
                      padding: const EdgeInsets.only(right: horizontalMargin),
                      child: model.isBusy
                          ? Container(height: 15, width: 15, child: CircularProgressIndicator(strokeWidth: 2, color: lPrimaryColor,))
                          : GestureDetector(
                        onTap: () => model.addPost(titleController.text.toString(), contentController.text.toString()),
                          child: Text('Post', style: mediumTextStyle.copyWith(color: lPrimaryColor, fontWeight: rubikMedium),)),
                    )
                  ],
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: TextFormField(
                  controller: titleController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: textSizeMedium, color: lBodyTextColor),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    hintText: 'Title',
                    filled: true,
                    fillColor: lTFBackgroundColor,
                    hintStyle: TextStyle(color: lLightGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(customBorderRadius),
                      borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: TextFormField(
                  controller: contentController,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: null,
                  textInputAction: TextInputAction.newline,
                  style: TextStyle(fontSize: textSizeMedium, color: lBodyTextColor,),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    hintText: 'Content',
                    filled: false,
                    fillColor: lTFBackgroundColor,
                    hintStyle: TextStyle(color: lLightGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(customBorderRadius),
                        borderSide: BorderSide.none
                    ),
                  ),
                ),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
      viewModelBuilder: () => WritePostViewModel(),
    );
  }
}
