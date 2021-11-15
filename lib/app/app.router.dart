// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../models/post.dart';
import '../ui/auth/login/login_view.dart';
import '../ui/auth/register/register_view.dart';
import '../ui/home/home_view.dart';
import '../ui/location_search/location_search_view.dart';
import '../ui/post/post_view.dart';
import '../ui/profile/profile_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/write_post/write_post_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String writePostView = '/write-post-view';
  static const String postView = '/post-view';
  static const String loginView = '/login-view';
  static const String registerView = '/register-view';
  static const String profileView = '/profile-view';
  static const String locationSearchView = '/location-search-view';
  static const all = <String>{
    startupView,
    homeView,
    writePostView,
    postView,
    loginView,
    registerView,
    profileView,
    locationSearchView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.writePostView, page: WritePostView),
    RouteDef(Routes.postView, page: PostView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.registerView, page: RegisterView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.locationSearchView, page: LocationSearchView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    WritePostView: (data) {
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => const WritePostView(),
        settings: data,
      );
    },
    PostView: (data) {
      var args = data.getArgs<PostViewArguments>(nullOk: false);
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => PostView(
          key: args.key,
          post: args.post,
        ),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    RegisterView: (data) {
      var args = data.getArgs<RegisterViewArguments>(
        orElse: () => RegisterViewArguments(),
      );
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => RegisterView(key: args.key),
        settings: data,
      );
    },
    ProfileView: (data) {
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
    LocationSearchView: (data) {
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => const LocationSearchView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PostView arguments holder class
class PostViewArguments {
  final Key? key;
  final Post post;
  PostViewArguments({this.key, required this.post});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// RegisterView arguments holder class
class RegisterViewArguments {
  final Key? key;
  RegisterViewArguments({this.key});
}
