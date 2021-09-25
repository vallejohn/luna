import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/custom_widgets/shadowed_text_button.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpaceMassive,
              Center(
                  child: Text(
                'Login',
                style: massiveTextStyle,
              )),
              verticalSpaceLarge,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: TextFormField(
                  controller: emailController,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                      fontSize: textSizeMedium, color: lBodyTextColor),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Ionicons.person,
                      color: lOtherColor,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 50, top: 10, bottom: 10),
                    hintText: 'Email',
                    filled: true,
                    fillColor: lTFBackgroundColor,
                    hintStyle: TextStyle(color: lOtherColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(customBorderRadius),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                      fontSize: textSizeMedium, color: lBodyTextColor),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Ionicons.shield,
                      color: lOtherColor,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 50, top: 10, bottom: 10),
                    hintText: 'Password',
                    filled: true,
                    fillColor: lTFBackgroundColor,
                    hintStyle: TextStyle(color: lOtherColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(customBorderRadius),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: ShadowedTextButton(
                  onPressed: () => model.login(
                      email: emailController.text.toString(),
                      password: passwordController.text.toString()
                  ),
                  backgroundColor: lPrimaryColor,
                  child: !model.isBusy ? Text('Login', style: mediumTextStyle.copyWith(color: Colors.white),)
                      : Container(width: 15, height: 15, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2, )),),
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: GestureDetector(
                  onTap: () => model.goToRegisterView(),
                  child: Text('Register', style: mediumTextStyle,),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
