// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/auth/login/login_view.dart';
import '../ui/auth/register/register_view.dart';
import '../ui/home/home_view.dart';
import '../ui/post/post_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/write_post/write_post_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String writePostView = '/write-post-view';
  static const String postView = '/post-view';
  static const String loginView = '/login-view';
  static const String registerView = '/register-view';
  static const all = <String>{
    startupView,
    homeView,
    writePostView,
    postView,
    loginView,
    registerView,
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
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    WritePostView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const WritePostView(),
        settings: data,
      );
    },
    PostView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PostView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const RegisterView(),
        settings: data,
      );
    },
  };
}
