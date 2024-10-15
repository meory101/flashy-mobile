

import '../../../../../core/api/api_error/api_exception.dart';
import '../../../../../core/api/api_error/api_status_code.dart';
import '../../../../../core/api/api_links.dart';
import '../../../../../core/api/api_methods.dart';
import '../../../domain/entity/newest_products_response_entity.dart';
/// Eng.Nour Othman(meory)*

abstract class HomeRemote {
  Future<NewestProductsResponseEntity> getNewestProducts();


}

class HomeRemoteImpl extends HomeRemote {
  @override
  Future<NewestProductsResponseEntity> getNewestProducts() async {
    final response = await ApiMethods()
        .get(url: ApiPostUrl.addEditAddress);

    if (ApiStatusCode.success().contains(response.statusCode)) {
      return  newestProductsResponseEntityFromJson(response.body);
    } else {
      throw ApiServerException(response: response);
    }
  }


}
