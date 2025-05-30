import 'package:aahwanam/models/book_service_details.dart';
import 'package:aahwanam/models/service_details.dart';
import 'package:equatable/equatable.dart';

abstract class PhotographerState extends Equatable {
  const PhotographerState();

  @override
  List<Object?> get props => []; // Fixed to 'props'
}

// Initial state
class PhotographerInitial extends PhotographerState {}

// State when loading photographer data
class PhotographerLoading extends PhotographerState {}

// State when photographer data is loaded
class PhotographerLoaded extends PhotographerState {
  final List<Map<String, String>> photographers;
  final List<Map<String, dynamic>> packages;
  final List<Map<String, dynamic>> birthdayPackages;
  final List<Map<String, dynamic>> babyShootPackages;
  final List<Map<String, dynamic>> preWeddingPackages;
  final List<Map<String, dynamic>> fullWeddingPackages;
  final List<Map<String, String>> photoAndvideographers;
  final ServiceDetails serviceDetails;
  final BookServiceDetails bookServiceDetails;

  const PhotographerLoaded(this.photographers,this.packages ,this.birthdayPackages,this.babyShootPackages,this.preWeddingPackages,this.fullWeddingPackages,this.photoAndvideographers,this.serviceDetails,this.bookServiceDetails);

  @override
  List<Object?> get props => [photographers,packages,birthdayPackages,babyShootPackages,preWeddingPackages,fullWeddingPackages,photoAndvideographers,serviceDetails,bookServiceDetails];
}

// State for errors
class PhotographerError extends PhotographerState {
  final String message;

  const PhotographerError(this.message);

  @override
  List<Object?> get props => [message];
}
