import 'package:flutter/material.dart';
import 'package:luna/global/custom_widgets/text_input_field.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/ui/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: lDarkGreyColor),
                elevation: 0,
                backgroundColor: Colors.white,
                title: TextInputField(
                  controller: searchController,
                  hasError: false,
                  hintText: 'search',
                ),
              ),
              body: ListView(
                children: [
                  Container(
                    color: Colors.white,
                    height: 100,
                  )
                ],
              ),
            ));
  }
}
