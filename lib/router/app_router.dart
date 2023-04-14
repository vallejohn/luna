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

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartupPage, initial: true),
    AutoRoute(page: PostsPage),
    AutoRoute(page: PostDetailsPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: CreatePostPage),
    AutoRoute(page: ProfilePage),
  ]
)

class AppRouter extends _$AppRouter{}
