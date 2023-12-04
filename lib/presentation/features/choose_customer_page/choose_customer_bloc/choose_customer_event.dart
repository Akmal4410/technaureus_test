part of 'choose_customer_bloc.dart';

@freezed
class ChooseCustomerEvent with _$ChooseCustomerEvent {
  const factory ChooseCustomerEvent.chooseCustomer(String customerId) =
      _ChooseCustomer;
}
