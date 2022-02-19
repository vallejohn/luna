part of 'upload_image_bloc.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.uploading() = _Uploading;
  const factory UploadImageState.success({required PickedFile image}) = _Success;
  const factory UploadImageState.cancelled() = _Cancelled;
  const factory UploadImageState.error() = _Error;
}
