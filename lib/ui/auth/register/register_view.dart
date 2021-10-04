import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/register/register_form_view.dart';
import 'package:luna/ui/auth/register/register_view.form.dart';
import 'package:luna/ui/auth/register/register_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields:[
  FormTextField(name: 'username'),
  FormTextField(name: 'firstname'),
  FormTextField(name: 'lastname'),
  FormTextField(name: 'emailAddress'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confirmPassword'),
])

class RegisterView extends StatelessWidget with $RegisterView{
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      viewModelBuilder: () => RegisterViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [lPrimaryColor, lPrimaryColorsTransition]),
          ),
          child: ListView(
            children: [
              verticalSpaceLarge,
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Text(
                    'Create an account',
                    style: largeTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: rubikMedium),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Text(
                    'Please provide the required information below.',
                    style: mediumTextStyle.copyWith(
                        color: Colors.white, fontWeight: rubikLight),
                  ),
                ),
              ),
              verticalSpaceLarge,
              Center(
                child: GestureDetector(
                  child: ClipOval(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: buttonGradientBGColor
                      ),
                      child: model.profilePhoto == null ?  Icon(Ionicons.camera, size: 45, color: lPrimaryColor,) : Image.file(
                        model.profilePhoto!, fit: BoxFit.fitHeight,
                      ),
                      ),
                  ),
                  onTap: () => model.loadProfileImageFromGallery(),
                ),
              ),
              verticalSpaceSmall,
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Center(
                      child: Text('Click on the camera icon to browse a photo in your gallery.',
                    style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight), textAlign: TextAlign.center,
                  )),
                ),
              verticalSpaceLarge,
              if (model.validationMessage != '' && model.validationMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Center(
                      child: Text(
                    '${model.validationMessage}',
                    style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
                  )),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: RegisterFormView(
                  usernameController: usernameController, 
                  firstnameController: firstnameController, 
                  lastnameController: lastnameController, 
                  emailController: emailAddressController, 
                  passwordController: passwordController, 
                  confirmPasswordController: confirmPasswordController), 
                  
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
    );
  }
}
