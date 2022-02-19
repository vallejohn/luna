import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/features/post/presentation/blocs/create_post/create_post_bloc.dart';

import 'features/firebase_authentication/presentation/blocs/auth_check/auth_check_bloc.dart';
import 'features/firebase_authentication/presentation/blocs/login/login_bloc.dart';
import 'features/firebase_authentication/presentation/blocs/user_profile/user_profile_bloc.dart';
import 'features/post/presentation/blocs/posts/posts_bloc.dart';
import 'features/post/presentation/blocs/upload_image_bloc/upload_image_bloc.dart';

class BlocProviders{
  static List<BlocProvider> get(){
    return [
      BlocProvider<AuthCheckBloc>(
        create: (context) => AuthCheckBloc()..add(AuthCheckEvent.started()),
      ),
      BlocProvider<LoginBloc>(
        create: (context) => LoginBloc()..add(LoginEvent.started()),
      ),
      BlocProvider<PostsBloc>(
        create: (context) => PostsBloc()..add(PostsEvent.started()),
      ),
      BlocProvider<UserProfileBloc>(
        create: (context) => UserProfileBloc()..add(UserProfileEvent.started()),
      ),
      BlocProvider<CreatePostBloc>(
        create: (context) => CreatePostBloc()..add(CreatePostEvent.started()),
      ),
      BlocProvider<UploadImageBloc>(
        create: (context) => UploadImageBloc()..add(UploadImageEvent.started()),
      ),
    ];
  }
}