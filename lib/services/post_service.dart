import 'package:logger/logger.dart';
import 'package:luna/features/post/data/models/post.dart';

class PostService{

  Post? _post;
  Post? get post => _post;

  Logger _logger = Logger();

  void setPost(Post post){
    _logger.i('Setting post with title: ${post.title}');
    _post = post;
  }
}