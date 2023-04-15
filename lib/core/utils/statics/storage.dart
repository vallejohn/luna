class Storage{
  final String path;
  Storage(this.path);

  static Storage profilePhotos = Storage('profile_photos');
  static Storage postCovers = Storage('post_covers');
}