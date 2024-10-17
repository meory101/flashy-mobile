
import 'package:dartz/dartz.dart';
import 'package:flashy/feature/home/domain/entity/newest_products_response_entity.dart';
import '../../../../core/api/api_error/api_failures.dart';

abstract class HomeRepository {
  Future<Either<ApiFailure, NewestProductsResponseEntity>> getNewestProducts(
     );


}
