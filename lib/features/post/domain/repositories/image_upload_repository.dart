import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/data_sources/image_upload_data_source.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';

import '../../../../core/utils/errors.dart';

abstract class ImageUploadRepository{
  final ImageUploadDataSource imageUploadDataSource;
  ImageUploadRepository({required this.imageUploadDataSource});

  Future<Either<Failure, DataState<String, FirebaseException>>> uploadImage(ImageUploadParam param);
}