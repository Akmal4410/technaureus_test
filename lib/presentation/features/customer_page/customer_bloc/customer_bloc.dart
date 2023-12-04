import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/domain/usecases/get_customer.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

@injectable
class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final GetCustomer _getCustomer;
  CustomerBloc(this._getCustomer) : super(CustomerState.initial()) {
    on<_ViewAllCustomers>((event, emit) async {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        isLoading: true,
      ));

      final failureOrSuccess = await _getCustomer.viewAllCustomers();

      failureOrSuccess.fold(
        (failrue) => emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(left(failrue)),
          ),
        ),
        (customerList) {
          emit(
            state.copyWith(
              isLoading: false,
              failureOrSuccessOption: some(right(unit)),
              customerList: customerList,
            ),
          );
        },
      );
    });

    on<_SearchCustomers>((event, emit) async {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        isLoading: true,
      ));

      final failureOrSuccess =
          await _getCustomer.searchCustomers(event.customerName);

      failureOrSuccess.fold(
        (failrue) => emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(left(failrue)),
          ),
        ),
        (searchList) {
          emit(
            state.copyWith(
              isLoading: false,
              failureOrSuccessOption: some(right(unit)),
              searchList: searchList,
            ),
          );
        },
      );
    });

    on<_AddCustomer>((event, emit) async {
      emit(state.copyWith(
        addCustomerOption: none(),
        isLoading: true,
      ));

      final failureOrSuccess = await _getCustomer.addCustomer(event.customer);

      failureOrSuccess.fold(
        (failrue) => emit(
          state.copyWith(
            isLoading: false,
            addCustomerOption: some(left(failrue)),
          ),
        ),
        (success) {
          emit(
            state.copyWith(
              isLoading: false,
              addCustomerOption: some(right(unit)),
            ),
          );
        },
      );
    });

    on<_EditCustomer>((event, emit) async {
      emit(state.copyWith(
        editCustomerOption: none(),
        isLoading: true,
      ));

      final failureOrSuccess = await _getCustomer.editCustomer(event.customer);

      failureOrSuccess.fold(
        (failrue) => emit(
          state.copyWith(
            isLoading: false,
            editCustomerOption: some(left(failrue)),
          ),
        ),
        (success) {
          emit(
            state.copyWith(
              isLoading: false,
              editCustomerOption: some(right(unit)),
            ),
          );
        },
      );
    });
  }
}
