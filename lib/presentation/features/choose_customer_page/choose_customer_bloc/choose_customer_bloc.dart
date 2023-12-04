import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/usecases/get_customer.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

part 'choose_customer_event.dart';
part 'choose_customer_state.dart';
part 'choose_customer_bloc.freezed.dart';

@injectable
class ChooseCustomerBloc
    extends Bloc<ChooseCustomerEvent, ChooseCustomerState> {
  final GetCustomer _getCustomer;
  ChooseCustomerBloc(this._getCustomer) : super(ChooseCustomerState.initial()) {
    on<_ChooseCustomer>((event, emit) async {
      emit(
        ChooseCustomerState(
          chooseCustomerOption: none(),
        ),
      );
      final failureOrSuccess =
          await _getCustomer.chooseCustomer(event.customerId);
      emit(
        ChooseCustomerState(
          chooseCustomerOption: optionOf(failureOrSuccess),
        ),
      );
    });
  }
}
