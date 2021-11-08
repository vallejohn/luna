part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required UserProfile currentUser,
    required Stream<QuerySnapshot> postStream,
  }) = _Initial;
}
