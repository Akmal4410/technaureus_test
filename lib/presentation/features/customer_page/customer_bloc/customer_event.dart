part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.viewAllCustomers() = _ViewAllCustomers;
  const factory CustomerEvent.searchCustomers(String customerName) =
      _SearchCustomers;

  const factory CustomerEvent.addCustomer(Customer customer) = _AddCustomer;
  const factory CustomerEvent.editCustomer(Customer customer) = _EditCustomer;
}
