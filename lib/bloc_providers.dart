import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luna/features/post/presentation/blocs/comment/comment_bloc.dart';
import 'package:luna/features/post/presentation/blocs/comment_text_field_bloc/comment_text_field_bloc.dart';
import 'package:luna/features/post/presentation/blocs/create_post/create_post_bloc.dart';

import 'features/firebase_authentication/presentation/blocs/auth_check/auth_check_bloc.dart';
import 'features/firebase_authentication/presentation/blocs/login/login_bloc.dart';
import 'features/firebase_authentication/presentation/blocs/register/register_bloc.dart';
import 'features/post/presentation/blocs/like/like_bloc.dart';
import 'features/post/presentation/blocs/posts/posts_bloc.dart';
import 'features/post/presentation/blocs/browse_image_bloc/browse_image_bloc.dart';

class BlocProviders{
  static List<BlocProvider> get(){
    return [
      BlocProvider<AuthCheckBloc>(
        create: (context) => AuthCheckBloc()..add(AuthCheckEvent.started()),
      ),
      BlocProvider<LoginBloc>(
        create: (context) => LoginBloc()..add(LoginEvent.started()),
      ),
      BlocProvider<RegisterBloc>(
        create: (context) => RegisterBloc(),
      ),
      BlocProvider<PostsBloc>(
        create: (context) => PostsBloc()..add(PostsEvent.started()),
      ),
      BlocProvider<CreatePostBloc>(
        create: (context) => CreatePostBloc()..add(CreatePostEvent.started()),
      ),
      BlocProvider<BrowseImageBloc>(
        create: (context) => BrowseImageBloc()..add(BrowseImageEvent.started()),
      ),
      BlocProvider<CommentBloc>(
        create: (context) => CommentBloc()..add(CommentEvent.started()),
      ),
      BlocProvider<CommentTextFieldBloc>(
        create: (context) => CommentTextFieldBloc()..add(CommentTextFieldEvent.started()),
      ),
      BlocProvider<LikeBloc>(
        create: (context) => LikeBloc()..add(LikeEvent.started()),
      ),
    ];
  }
}