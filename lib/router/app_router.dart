import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart ';
import '../features/firebase_authentication/presentation/pages/login_page.dart';
import '../features/firebase_authentication/presentation/pages/startup_page.dart';
import '../features/post/presentation/pages/posts/post_details_page.dart';
import '../features/post/presentation/pages/posts/posts_page.dart';
import '../features/post/data/models/post.dart';

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
