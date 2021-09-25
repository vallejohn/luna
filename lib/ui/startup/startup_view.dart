import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/ui/startup/startup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          backgroundColor: lBackgroundColor,
          body: SafeArea(
            child: Center(child: CircularProgressIndicator())
          ),
        ),
      viewModelBuilder: () => StartupViewModel(),
      onModelReady: (model) => model.initStartupView(),
    );
  }
}
