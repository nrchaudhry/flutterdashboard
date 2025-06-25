import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/services/HTTPService.dart';

import 'ProductItem.dart';

class ProductItemService {
  static Future<List<ProductItem>> get() async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productitem', request_BODY: ''}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<List<ProductItem>> getAll() async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productitem/all', request_BODY: ''}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<ProductItem> getOne(id) async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productitem/ $id', request_BODY: ''}";
    return ProductItem.fromJson(await HTTPService.call(postData));
  }

  static Future<ProductItem> add(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productitem', request_BODY: '$data'}";
    return ProductItem.fromJson(await HTTPService.call(postData));
  }

  static Future<ProductItem> update(data, id) async {
    var postData =
        "{request_TYPE: 'PUT', request_URI: '${servicePath}productitem/ $id', request_BODY: '$data'}";
    return ProductItem.fromJson(await HTTPService.call(postData));
  }

  static Future<List<ProductItem>> updateAll(data) async {
    var postData =
        "{request_TYPE: 'PUT', request_URI: '${servicePath}productitem', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<ProductItem> delete(id) async {
    var postData =
        "{request_TYPE: 'DELETE', request_URI: '${servicePath}productitem/ $id', request_BODY: ''}";
    return ProductItem.fromJson(await HTTPService.call(postData));
  }

  static Future<ProductItem> remove(id) async {
    var postData =
        "{request_TYPE: 'GET', request_URI: '${servicePath}productitem/remove/ $id', request_BODY: ''}";
    return ProductItem.fromJson(await HTTPService.call(postData));
  }

  static Future<List<ProductItem>> search(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productitem/search', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<List<ProductItem>> searchAll(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productitem/search/all', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<List<ProductItem>> advancedSearch(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productitem/advancedsearch', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }

  static Future<List<ProductItem>> advancedSearchAll(data) async {
    var postData =
        "{request_TYPE: 'POST', request_URI: '${servicePath}productitem/advancedsearch/all', request_BODY: '$data'}";
    return (await HTTPService.call(postData))
        .map<ProductItem>((json) => ProductItem.fromJson(json))
        .toList();
  }
}
