import 'package:flutterdashboard/setting.dart';

import 'package:flutterdashboard/services/HTTPService.dart';

class  UniversityService {
  get() {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'university', request_BODY: ''";
    return HTTPService.call(postData);
  }

  getAll() {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'university/all', request_BODY: ''";
    return HTTPService.call(postData);
  }


  getOne(id) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'GET', request_URI: 'university/ $id', request_BODY: ''";
    return HTTPService.call(postData);
  }

  add(data) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'university', request_BODY: $data";
    return HTTPService.call(postData);
  }

  update(data, id) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'PUT', request_URI: 'university/ $id', request_BODY: $data";
    return HTTPService.call(postData);
  }

  delete(id) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'DELETE', request_URI: 'university/ $id', request_BODY: ''";
    return HTTPService.call(postData);
  }

  search(data) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'university/search', request_BODY: $data";
    return HTTPService.call(postData);
  }

  searchAll(data) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'university/search/all', request_BODY: $data";
    return HTTPService.call(postData);
  }

  advancedSearch(data) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'university/advancedsearch', request_BODY: $data";
    return HTTPService.call(postData);
  }

  advancedSearchAll(data) {
    var postData = "{service_NAME: $academicsserviceNAME, request_TYPE: 'POST', request_URI: 'university/advancedsearch/all', request_BODY: $data";
    return HTTPService.call(postData);
  }

  getAllDetail(response) {
    // for (var a = 0; a < response.length; a++) {
    //   response[a].address = response[a].address_LINE1;
    //   if (response[a].address_LINE2 != null && response[a].address_LINE2 != '')
    //     response[a].address = response[a].address + ", " + response[a].address_LINE2;
    //   if (response[a].address_LINE3 != null && response[a].address_LINE3 != '')
    //     response[a].address = response[a].address + ", " + response[a].address_LINE3;
    //   if (response[a].address_LINE4 != null && response[a].address_LINE4 != '')
    //     response[a].address = response[a].address + ", " + response[a].address_LINE4;
    //   if (response[a].address_LINE5 != null && response[a].address_LINE5 != '')
    //     response[a].address = response[a].address + ", " + response[a].address_LINE5;

    //   response[a].location = JSON.parse(response[a].location_DETAIL);
    //   response[a].location_DETAIL = null;
    //   while (response[a].location.locationparent_ID != null) {
    //     response[a].address = response[a].address + ", " + response[a].location.location_NAME;
    //     response[a].location = response[a].location.locationparent_ID;
    //   }
    // }
    return(response);
  }

  getDetail(response) {
    // response.address = response.address_LINE1;
    // if (response.address_LINE2 != null && response.address_LINE2 != '')
    //   response.address = response.address + ", " + response.address_LINE2;
    // if (response.address_LINE3 != null && response.address_LINE3 != '')
    //   response.address = response.address + ", " + response.address_LINE3;
    // if (response.address_LINE4 != null && response.address_LINE4 != '')
    //   response.address = response.address + ", " + response.address_LINE4;
    // if (response.address_LINE5 != null && response.address_LINE5 != '')
    //   response.address = response.address + ", " + response.address_LINE5;

    // response.locations = [];
    // response.location = JSON.parse(response.location_DETAIL);
    // response.location_DETAIL = null;
    // while (response.location.locationparent_ID != null) {
    //   response.address = response.address + ", " + response.location.location_NAME;
    //   response.locations.push(response.location);
    //   response.location = response.location.locationparent_ID;
    // }
    // response.locations.push(response.location);
    return(response);
  }

}
