import 'package:technaureus/data/models/customer/customer_db.dart';
import 'package:technaureus/data/models/customer/customer_model.dart';
import 'package:technaureus/domain/entities/customer.dart';

class CustomerMapper {
  static Customer fromCustomerModelToCustomer(CustomerModel customer) {
    return Customer(
      id: customer.id,
      name: customer.name,
      profilePic: customer.profilePic,
      mobileNumber: customer.mobileNumber,
      email: customer.email,
      street: customer.street,
      streetTwo: customer.streetTwo,
      city: customer.city,
      pincode: customer.pincode,
      country: customer.country,
      state: customer.state,
    );
  }

  static CustomerDB fromCustomerModelToCustomerDB(CustomerModel customer) {
    return CustomerDB(
      id: customer.id,
      name: customer.name,
      profilePic: customer.profilePic,
      mobileNumber: customer.mobileNumber,
      email: customer.email,
      street: customer.street,
      streetTwo: customer.streetTwo,
      city: customer.city,
      pincode: customer.pincode,
      country: customer.country,
      state: customer.state,
      createdDate: customer.createdDate,
      createdTime: customer.createdTime,
      modifiedDate: customer.modifiedDate,
      modifiedTime: customer.modifiedTime,
      flag: customer.flag,
    );
  }

  static CustomerModel fromCustomerDBToCustomerModel(CustomerDB customer) {
    return CustomerModel(
      id: customer.id,
      name: customer.name,
      profilePic: customer.profilePic,
      mobileNumber: customer.mobileNumber,
      email: customer.email,
      street: customer.street,
      streetTwo: customer.streetTwo,
      city: customer.city,
      pincode: customer.pincode,
      country: customer.country,
      state: customer.state,
      createdDate: customer.createdDate,
      createdTime: customer.createdTime,
      modifiedDate: customer.modifiedDate,
      modifiedTime: customer.modifiedTime,
      flag: customer.flag,
    );
  }
}
