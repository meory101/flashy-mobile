import 'package:equatable/equatable.dart';
import 'package:flashy/feature/home/domain/entity/newest_products_response_entity.dart';
import '../../../../core/resource/cubit_status_manager.dart';
class NewestProductsState extends Equatable {
  final String error;
  final CubitStatus status;
  final NewestProductsResponseEntity entity;
  const NewestProductsState({
    required this.error,
    required this.entity,
    required this.status,
  });

  factory NewestProductsState.initail() {
    return NewestProductsState(error: '', status: CubitStatus.initial,entity:NewestProductsResponseEntity());
  }

  NewestProductsState copyWith({
    String? error,
    CubitStatus? status,
    NewestProductsResponseEntity? entity,
  }) {
    return NewestProductsState(
      entity: entity?? this.entity,
      error: error ?? this.error,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [error, status,entity];
}
