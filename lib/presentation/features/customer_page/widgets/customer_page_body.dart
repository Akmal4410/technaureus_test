import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/presentation/features/choose_customer_page/choose_customer_bloc/choose_customer_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/customer_bloc/customer_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/widgets/add_edit_customer_sheet.dart';
import 'package:technaureus/presentation/widgets/customer_card.dart';
import 'package:technaureus/presentation/widgets/search_field.dart';
import 'package:technaureus/utils/debouncer/debouncer.dart';
import 'package:technaureus/utils/size_constants.dart';

class CustomerPageBody extends StatefulWidget {
  const CustomerPageBody({
    super.key,
    this.suffixIcon,
    this.isCustomerPage = false,
  });

  final Widget? suffixIcon;
  final bool isCustomerPage;

  @override
  State<CustomerPageBody> createState() => _CustomerPageBodyState();
}

class _CustomerPageBodyState extends State<CustomerPageBody> {
  final textController = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CustomerBloc>(context).add(
      const CustomerEvent.viewAllCustomers(),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: kAppPaddingAll12,
          sliver: SliverAppBar(
            collapsedHeight: 0,
            toolbarHeight: 0,
            pinned: false,
            snap: true,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: SearchField(
                controller: textController,
                suffixIcon: widget.suffixIcon,
                onChanged: (customerName) => _debouncer.run(() {
                  BlocProvider.of<CustomerBloc>(context).add(
                    CustomerEvent.searchCustomers(customerName),
                  );
                }),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: kAppPaddingAll12,
          sliver: BlocBuilder<CustomerBloc, CustomerState>(
            builder: (context, state) {
              return state.isLoading
                  ? const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    )
                  : textController.text.isEmpty
                      ? _buildCustomers(state.customerList)
                      : _buildSearchCustomers(
                          state.searchList,
                          textController.text.trim(),
                        );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCustomers(List<Customer> customerList) {
    return customerList.isEmpty
        ? const SliverToBoxAdapter(
            child: Center(child: Text("No Customers")),
          )
        : SliverList.separated(
            itemCount: customerList.length,
            separatorBuilder: (context, index) => kHeight16,
            itemBuilder: (context, index) {
              return CustomerCard(
                customerList[index],
                onTap: widget.isCustomerPage
                    ? null
                    : () {
                        BlocProvider.of<ChooseCustomerBloc>(context).add(
                          ChooseCustomerEvent.chooseCustomer(
                            customerList[index].id.toString(),
                          ),
                        );
                      },
                onLongPress: widget.isCustomerPage
                    ? () => _showEditCustomerBottomSheet(
                        context, customerList[index])
                    : null,
              );
            },
          );
  }

  Widget _buildSearchCustomers(List<Customer> searchList, String value) {
    return searchList.isEmpty
        ? SliverToBoxAdapter(
            child: Center(child: Text("No Customers with $value")),
          )
        : SliverList.separated(
            itemCount: searchList.length,
            separatorBuilder: (context, index) => kHeight16,
            itemBuilder: (context, index) {
              return CustomerCard(
                searchList[index],
                onTap: widget.isCustomerPage
                    ? null
                    : () {
                        BlocProvider.of<ChooseCustomerBloc>(context).add(
                          ChooseCustomerEvent.chooseCustomer(
                            searchList[index].id.toString(),
                          ),
                        );
                      },
                onLongPress: widget.isCustomerPage
                    ? () =>
                        _showEditCustomerBottomSheet(context, searchList[index])
                    : null,
              );
            },
          );
  }

  void _showEditCustomerBottomSheet(BuildContext context, Customer customer) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      context: context,
      builder: (context) {
        return AddEditCustomerSheet(customer: customer);
      },
    );
  }
}
