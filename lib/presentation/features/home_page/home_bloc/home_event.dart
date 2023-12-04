part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onTap(int index) = _OnTap;
  const factory HomeEvent.getData() = _GetData;
}
