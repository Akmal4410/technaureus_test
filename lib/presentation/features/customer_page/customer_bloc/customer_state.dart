part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState({
    required bool isLoading,
    required Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption,
    required List<Customer> customerList,
    required List<Customer> searchList,
    required Option<Either<ApiResponseFailures, Unit>> addCustomerOption,
    required Option<Either<ApiResponseFailures, Unit>> editCustomerOption,
  }) = _CustomerState;

  factory CustomerState.initial() {
    return CustomerState(
      isLoading: false,
      failureOrSuccessOption: none(),
      customerList: [],
      searchList: [],
      addCustomerOption: none(),
      editCustomerOption: none(),
    );
  }
}
