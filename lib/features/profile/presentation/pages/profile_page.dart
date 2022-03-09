import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';

import '../../../../global/ui_helpers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: ThemeData.light().iconTheme,
        elevation: 0,
        title: TextFormField(
          controller: searchController,
          textInputAction: TextInputAction.done,
          style: AppTextStyle.medium,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
            hintText: 'Search',
            filled: true,
            fillColor: AppColors.background.withOpacity(0.5),
            hintStyle: TextStyle(color: AppColors.electricBlue),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(customBorderRadius), borderSide: BorderSide.none),
          ),
        ),),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                AppVerticalSpace.medium,
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 30),
                      AppHorizontalSpace.small,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lydia Calvert', style: AppTextStyle.massive,),
                          Text('Book Writer', style: AppTextStyle.medium,),
                          Wrap(
                            children: [
                              Text('2.3k', style: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikSemiBold, color: AppColors.primary),),
                              AppHorizontalSpace.tiny,
                              Text('Followers', style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue),),
                              AppHorizontalSpace.small,
                              Text('589', style: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikSemiBold, color: AppColors.primary),),
                              AppHorizontalSpace.tiny,
                              Text('Following', style: AppTextStyle.medium.copyWith(color: AppColors.electricBlue),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                AppVerticalSpace.medium,
              ],
            ),
          )
        ],
      ),
    );
  }
}
