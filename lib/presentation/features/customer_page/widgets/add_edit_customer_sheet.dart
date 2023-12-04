import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/presentation/features/customer_page/customer_bloc/customer_bloc.dart';
import 'package:technaureus/presentation/widgets/app_text_field.dart';
import 'package:technaureus/presentation/widgets/app_text_field_border.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';
import 'package:technaureus/utils/utils.dart';

class AddEditCustomerSheet extends StatefulWidget {
  const AddEditCustomerSheet({
    super.key,
    this.customer,
  });

  final Customer? customer;

  @override
  State<AddEditCustomerSheet> createState() => _AddEditCustomerSheetState();
}

class _AddEditCustomerSheetState extends State<AddEditCustomerSheet> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController mobileNumberController;
  late TextEditingController emailController;
  late TextEditingController streetController;
  late TextEditingController street2Controller;
  late TextEditingController cityController;
  late TextEditingController pincodeController;
  late TextEditingController countryController;
  late TextEditingController stateController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.customer?.name);
    mobileNumberController =
        TextEditingController(text: widget.customer?.mobileNumber);
    emailController = TextEditingController(text: widget.customer?.email);
    streetController = TextEditingController(text: widget.customer?.street);
    street2Controller = TextEditingController(text: widget.customer?.streetTwo);
    cityController = TextEditingController(text: widget.customer?.city);
    pincodeController =
        TextEditingController(text: widget.customer?.pincode.toString());
    countryController = TextEditingController(text: widget.customer?.country);
    stateController = TextEditingController(text: widget.customer?.state);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    mobileNumberController.dispose();
    emailController.dispose();
    streetController.dispose();
    street2Controller.dispose();
    cityController.dispose();
    pincodeController.dispose();
    countryController.dispose();
    stateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.addCustomerOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) {
              BlocProvider.of<CustomerBloc>(context).add(
                const CustomerEvent.viewAllCustomers(),
              );
              return Utils.showSnakbar(
                title: "Customer Added Successfully",
                context: context,
                color: Colors.green,
              ).then((value) => Navigator.pop(context));
            },
          ),
        );
        state.editCustomerOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) {
              BlocProvider.of<CustomerBloc>(context).add(
                const CustomerEvent.viewAllCustomers(),
              );
              return Utils.showSnakbar(
                title: "Customer Edited Successfully",
                context: context,
                color: Colors.green,
              ).then((value) => Navigator.pop(context));
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 20,
          left: 16,
          right: 16,
        ),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _bottomSheetTitle(context),
                kHeight16,
                const Text(
                  "Customer Name",
                  style: kTextStyle13MediumGrey,
                ),
                kHeight8,
                AppTextFieldBorder(
                  hintText: "Customer Name",
                  controller: nameController,
                  validator: validateRequired,
                ),
                kHeight8,
                AppTextField(
                  hintText: "Mobile Number",
                  controller: mobileNumberController,
                  validator: validatePhoneNumber,
                  keyboardType: TextInputType.phone,
                ),
                kHeight8,
                AppTextField(
                  hintText: "Email",
                  controller: emailController,
                  validator: validateEmail,
                  textCapitalization: TextCapitalization.none,
                ),
                kHeight20,
                const Text(
                  "Address",
                  style: kTextStyle18Bold,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        hintText: "Street",
                        controller: streetController,
                        validator: validateRequired,
                      ),
                    ),
                    kWidth12,
                    Expanded(
                      child: AppTextField(
                        hintText: "Street 2",
                        controller: street2Controller,
                        validator: validateRequired,
                      ),
                    ),
                  ],
                ),
                kHeight8,
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        hintText: "City",
                        controller: cityController,
                        validator: validateRequired,
                      ),
                    ),
                    kWidth12,
                    Expanded(
                      child: AppTextField(
                        hintText: "Pincode",
                        controller: pincodeController,
                        validator: validatePincode,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
                kHeight8,
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        hintText: "Country",
                        controller: countryController,
                        validator: validateRequired,
                      ),
                    ),
                    kWidth12,
                    Expanded(
                      child: AppTextField(
                        hintText: "State",
                        controller: stateController,
                        validator: validateRequired,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ],
                ),
                kHeight20,
                Center(
                  child: ElevatedButton(
                    onPressed: () => addCustomer(),
                    child: Text(
                      "Submit",
                      style: kTextStyle14Medium.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                kHeight24,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _bottomSheetTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${widget.customer != null ? "Edit" : "Add"} Customer",
          style: kTextStyle18Bold,
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: Colors.blue.shade200,
            radius: 13,
            child: Icon(
              Icons.close,
              color: Colors.blue.shade900,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }

  void addCustomer() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }

    final customer = Customer(
      id: widget.customer?.id ?? 0,
      name: nameController.text.trim(),
      mobileNumber: mobileNumberController.text.trim(),
      email: emailController.text.trim(),
      street: streetController.text.trim(),
      streetTwo: street2Controller.text.trim(),
      city: cityController.text.trim(),
      pincode: int.tryParse(pincodeController.text.trim()) ?? 0,
      country: countryController.text.trim(),
      state: stateController.text.trim(),
    );

    if (widget.customer != null) {
      BlocProvider.of<CustomerBloc>(context).add(
        CustomerEvent.editCustomer(customer),
      );
    } else {
      BlocProvider.of<CustomerBloc>(context).add(
        CustomerEvent.addCustomer(customer),
      );
    }
  }
}
