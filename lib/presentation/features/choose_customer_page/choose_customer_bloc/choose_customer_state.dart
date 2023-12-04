part of 'choose_customer_bloc.dart';

@freezed
class ChooseCustomerState with _$ChooseCustomerState {
  const factory ChooseCustomerState({
    required Option<Either<ApiResponseFailures, Unit>> chooseCustomerOption,
  }) = _ChooseCustomerState;

  factory ChooseCustomerState.initial() {
    return ChooseCustomerState(
      chooseCustomerOption: none(),
    );
  }
}
