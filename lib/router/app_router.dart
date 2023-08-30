import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:luna/features/post/presentation/pages/create_post/create_post_page.dart';
import 'package:luna/features/profile/presentation/pages/profile_page.dart';
import '../features/firebase_authentication/presentation/pages/login_page.dart';
import '../features/firebase_authentication/presentation/pages/register_page.dart';
import '../features/firebase_authentication/presentation/pages/startup_page.dart';
import '../features/post/presentation/pages/posts/post_details_page.dart';
import '../features/post/presentation/pages/posts/posts_page.dart';

part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: StartupRoute.page, initial: true),
    AutoRoute(page: PostsRoute.page),
    AutoRoute(page: PostDetailsRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: CreatePostRoute.page),
    AutoRoute(page: ProfileRoute.page),
  ];
}
