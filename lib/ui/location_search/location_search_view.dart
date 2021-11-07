import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/location_search/location_search_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LocationSearchView extends StatelessWidget {
  const LocationSearchView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LocationSearchViewModel>.reactive(
      viewModelBuilder: () => LocationSearchViewModel(), 
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: lDarkGreyColor),
          elevation: 1,
          title: TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search for places',
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
              border: InputBorder.none,
              ),
            ),
        ), 
      ));
  }
}