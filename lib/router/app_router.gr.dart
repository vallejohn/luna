// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const StartupPage());
    },
    PostsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PostsPage());
    },
    PostDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: PostDetailsPage(key: args.key, post: args.post));
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    CreatePostRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CreatePostPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(StartupRoute.name, path: '/'),
        RouteConfig(PostsRoute.name, path: '/posts-page'),
        RouteConfig(PostDetailsRoute.name, path: '/post-details-page'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(CreatePostRoute.name, path: '/create-post-page')
      ];
}

/// generated route for
/// [StartupPage]
class StartupRoute extends PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: '/');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [PostsPage]
class PostsRoute extends PageRouteInfo<void> {
  const PostsRoute() : super(PostsRoute.name, path: '/posts-page');

  static const String name = 'PostsRoute';
}

/// generated route for
/// [PostDetailsPage]
class PostDetailsRoute extends PageRouteInfo<PostDetailsRouteArgs> {
  PostDetailsRoute({Key? key, required Post post})
      : super(PostDetailsRoute.name,
            path: '/post-details-page',
            args: PostDetailsRouteArgs(key: key, post: post));

  static const String name = 'PostDetailsRoute';
}

class PostDetailsRouteArgs {
  const PostDetailsRouteArgs({this.key, required this.post});

  final Key? key;

  final Post post;

  @override
  String toString() {
    return 'PostDetailsRouteArgs{key: $key, post: $post}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [CreatePostPage]
class CreatePostRoute extends PageRouteInfo<void> {
  const CreatePostRoute()
      : super(CreatePostRoute.name, path: '/create-post-page');

  static const String name = 'CreatePostRoute';
}
