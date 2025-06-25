import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/services/HTTPService.dart';

import 'ProductCategory.dart';

class ProductCategoryService {
  static Future<List<ProductCategory>> get() async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productcategory', request_BODY: ''}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }

  static Future<List<ProductCategory>> getAll() async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productcategory/all', request_BODY: ''}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }

  static Future<ProductCategory> getOne(id) async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productcategory/ $id', request_BODY: ''}";
    return ProductCategory.fromJson(await HTTPService.call(postData));
  }

  static Future<ProductCategory> add(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productcategory', request_BODY: '$data'}";
    return ProductCategory.fromJson(await HTTPService.call(postData));
  }

  static Future<ProductCategory> update(data, id) async {
    var postData =
        "{request_TYPE: 'PUT', request_URI: '${servicePath}productcategory/ $id', request_BODY: '$data'}";
    return ProductCategory.fromJson(await HTTPService.call(postData));
  }

  static Future<List<ProductCategory>> updateAll(data) async {
    var postData =
        "{request_TYPE: 'PUT', request_URI: '${servicePath}productcategory', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }

  static Future<ProductCategory> delete(id) async {
    var postData =
        "{request_TYPE: 'DELETE', request_URI: '${servicePath}productcategory/ $id', request_BODY: ''}";
    return ProductCategory.fromJson(await HTTPService.call(postData));
  }

  static Future<ProductCategory> remove(id) async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productcategory/remove/ $id', request_BODY: ''}";
    return ProductCategory.fromJson(await HTTPService.call(postData));
  }

  static Future<List<ProductCategory>> search(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productcategory/search', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }

  static Future<List<ProductCategory>> searchAll(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productcategory/search/all', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }

  static Future<List<ProductCategory>> advancedSearch(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productcategory/advancedsearch', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }

  static Future<List<ProductCategory>> advancedSearchAll(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productcategory/advancedsearch/all', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductCategory>((json) => ProductCategory.fromJson(json))
        .toList();
  }
}
