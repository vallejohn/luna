// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameOrEmailValueKey = 'usernameOrEmail';
const String PasswordValueKey = 'password';

mixin $LoginView on StatelessWidget {
  final TextEditingController usernameOrEmailController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode usernameOrEmailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    usernameOrEmailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            UsernameOrEmailValueKey: usernameOrEmailController.text,
            PasswordValueKey: passwordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    usernameOrEmailController.dispose();
    usernameOrEmailFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get usernameOrEmailValue =>
      this.formValueMap[UsernameOrEmailValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];

  bool get hasUsernameOrEmail =>
      this.formValueMap.containsKey(UsernameOrEmailValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
}

extension Methods on FormViewModel {}
