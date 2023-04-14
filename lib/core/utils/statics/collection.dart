class Collection{
  final String value;
  Collection(this.value);

  static Collection users = Collection('users');
  static Collection posts = Collection('posts');
  static Collection comments = Collection('comments');
  static Collection likes = Collection('likes');
}