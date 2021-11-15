import 'package:logger/logger.dart';
import 'package:luna/models/post.dart';

class PostService{

  Post? _post;
  Post? get post => _post;

  Logger _logger = Logger();

  void setPost(Post post){
    _logger.i('Setting post with title: ${post.title}');
    _post = post;
  }
}