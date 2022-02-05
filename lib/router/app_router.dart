import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:luna/pages/startup_page.dart';
import 'package:luna/pages/posts/post_details_page.dart';
import 'package:luna/pages/posts/posts_page.dart';
import '../pages/login_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartupPage, initial: true),
    AutoRoute(page: PostsPage),
    AutoRoute(page: PostDetailsPage),
    AutoRoute(page: LoginPage),
  ]
)

class AppRouter extends _$AppRouter{}
