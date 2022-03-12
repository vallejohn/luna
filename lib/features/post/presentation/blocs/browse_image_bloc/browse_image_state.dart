part of 'browse_image_bloc.dart';

@freezed
class BrowseImageState with _$BrowseImageState {
  const factory BrowseImageState.initial() = _Initial;
  const factory BrowseImageState.uploading() = _Uploading;
  const factory BrowseImageState.success({required PickedFile image}) = _Success;
  const factory BrowseImageState.cancelled() = _Cancelled;
  const factory BrowseImageState.error() = _Error;
}
