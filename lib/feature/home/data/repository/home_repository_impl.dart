import 'package:dartz/dartz.dart';
import 'package:flashy/feature/home/data/datasource/remote/home_remote.dart';
import 'package:flashy/feature/home/domain/entity/newest_products_response_entity.dart';
import 'package:flashy/feature/home/domain/repository/home_repository.dart';
import '../../../../core/api/api_error/api_failures.dart';
import '../../../../core/api/connector.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemote remote;

  HomeRepositoryImpl({
    required this.remote,
  });

  @override
  Future<Either<ApiFailure, NewestProductsResponseEntity>> getNewestProducts() {
    return Connector<NewestProductsResponseEntity>().connect(
        remote: () async {
          final result =
          await remote.getNewestProducts();
          return Right(result);
        });
  }
}