part of 'browse_image_bloc.dart';

@freezed
class BrowseImageEvent with _$BrowseImageEvent {
  const factory BrowseImageEvent.started() = _Started;
  const factory BrowseImageEvent.onBrowse() = _OnBrowse;
  const factory BrowseImageEvent.onCancel() = _OnCancel;
}
