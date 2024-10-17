import 'package:dartz/dartz.dart';
import 'package:flashy/feature/home/domain/entity/newest_products_response_entity.dart';
import 'package:flashy/feature/home/domain/repository/home_repository.dart';
import '../../../../core/api/api_error/api_failures.dart';

class NewestProductsUsecase {
  final HomeRepository repository;

  NewestProductsUsecase({
    required this.repository,
  });

  Future<Either<ApiFailure, NewestProductsResponseEntity>> call() async {
    return await repository.getNewestProducts();
  }
}
