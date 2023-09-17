import 'dart:io';

import 'package:equatable/equatable.dart';

class Image extends Equatable {
  final File imageFile;
  final String folderName;

  const Image({required this.imageFile, required this.folderName});

  Image copyWith({
    File? imageFile,
    String? folderName,
  }) =>
      Image(
        imageFile: imageFile ?? this.imageFile,
        folderName: folderName ?? this.folderName,
      );

  @override
  List<Object?> get props => [
        imageFile,
        folderName,
      ];
}
