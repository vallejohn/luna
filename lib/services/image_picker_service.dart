import 'package:image_picker/image_picker.dart';

class ImagePickerService{
  Future<PickedFile>? loadProfileImageFromGallery() async{
    // ignore: invalid_use_of_visible_for_testing_member
    PickedFile? image = await ImagePicker.platform.pickImage(
      source: ImageSource.gallery, 
      imageQuality: 50); 

    return image!;
  }

  Future<PickedFile>? loadPostImageCoverFromGallery() async{
    // ignore: invalid_use_of_visible_for_testing_member
    PickedFile? image = await ImagePicker.platform.pickImage(
      source: ImageSource.gallery, 
      imageQuality: 50); 

    return image!;
  }
}