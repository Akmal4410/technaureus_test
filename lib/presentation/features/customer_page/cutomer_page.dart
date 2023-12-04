import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/customer_bloc/customer_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/widgets/add_edit_customer_sheet.dart';
import 'package:technaureus/presentation/features/customer_page/widgets/customer_page_body.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/utils.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) => null,
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Customers"),
          actions: const [
            Padding(
              padding: kAppbarRightPadding,
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: CustomerPageBody(
          suffixIcon: _searchFieldSuffix(context),
          isCustomerPage: true,
        ),
      ),
    );
  }

  Row _searchFieldSuffix(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        kWidth8,
        GestureDetector(
          onTap: () => _showAddCustomerBottomSheet(context),
          child: CircleAvatar(
            backgroundColor: Colors.blue.shade900,
            radius: 13,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        kWidth12,
      ],
    );
  }

  void _showAddCustomerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      context: context,
      builder: (context) {
        return const AddEditCustomerSheet();
      },
    );
  }
}
