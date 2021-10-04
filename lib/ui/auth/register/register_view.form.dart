// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameValueKey = 'username';
const String FirstnameValueKey = 'firstname';
const String LastnameValueKey = 'lastname';
const String EmailAddressValueKey = 'emailAddress';
const String PasswordValueKey = 'password';
const String ConfirmPasswordValueKey = 'confirmPassword';

mixin $RegisterView on StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode firstnameFocusNode = FocusNode();
  final FocusNode lastnameFocusNode = FocusNode();
  final FocusNode emailAddressFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    usernameController.addListener(() => _updateFormData(model));
    firstnameController.addListener(() => _updateFormData(model));
    lastnameController.addListener(() => _updateFormData(model));
    emailAddressController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    confirmPasswordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            UsernameValueKey: usernameController.text,
            FirstnameValueKey: firstnameController.text,
            LastnameValueKey: lastnameController.text,
            EmailAddressValueKey: emailAddressController.text,
            PasswordValueKey: passwordController.text,
            ConfirmPasswordValueKey: confirmPasswordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    usernameController.dispose();
    usernameFocusNode.dispose();
    firstnameController.dispose();
    firstnameFocusNode.dispose();
    lastnameController.dispose();
    lastnameFocusNode.dispose();
    emailAddressController.dispose();
    emailAddressFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    confirmPasswordController.dispose();
    confirmPasswordFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get usernameValue => this.formValueMap[UsernameValueKey];
  String? get firstnameValue => this.formValueMap[FirstnameValueKey];
  String? get lastnameValue => this.formValueMap[LastnameValueKey];
  String? get emailAddressValue => this.formValueMap[EmailAddressValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];
  String? get confirmPasswordValue =>
      this.formValueMap[ConfirmPasswordValueKey];

  bool get hasUsername => this.formValueMap.containsKey(UsernameValueKey);
  bool get hasFirstname => this.formValueMap.containsKey(FirstnameValueKey);
  bool get hasLastname => this.formValueMap.containsKey(LastnameValueKey);
  bool get hasEmailAddress =>
      this.formValueMap.containsKey(EmailAddressValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
  bool get hasConfirmPassword =>
      this.formValueMap.containsKey(ConfirmPasswordValueKey);
}

extension Methods on FormViewModel {}
