import 'package:equatable/equatable.dart';

abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object> get props => [];
}

class AccountInitial extends AccountState {}

class AccountLoading extends AccountState {}

class AccountLoaded extends AccountState {
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final String profileUrl;
  final List<Map<String, dynamic>> bookings; // <-- ADD THIS
  final List<Map<String, dynamic>> inProgressBookings;
  final List<Map<String, dynamic>> addToCart;
  final List<Map<String, dynamic>> wishlist;
  final List<Map<String, dynamic>> conceptsTabImages;
  final List<Map<String, dynamic>> packages;


  const AccountLoaded({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.profileUrl,
    required this.bookings, // <-- ADD THIS
    required this.inProgressBookings,
    required this.addToCart,
    required this.wishlist,
    required this.conceptsTabImages,
    required this.packages,
  });

  @override
  List<Object> get props => [firstName, lastName, phone, email, profileUrl, bookings, inProgressBookings, addToCart, wishlist, conceptsTabImages, packages];
}

class AccountError extends AccountState {
  final String message;

  const AccountError(this.message);

  @override
  List<Object> get props => [message];
}
