import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_mvvm/data/app_exception.dart';
import 'package:flutter_mvvm/data/network/bse_api_services.dart';
import 'package:http/http.dart';

class NetworkApiService extends BaseApiService{
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try{   
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw FetchDataException('No internet conn');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url , dynamic data) async{
    dynamic responseJson;
    try{   
    Response response = await post(
      Uri.parse(url),
      body: data
    ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw FetchDataException('No internet conn');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response){
    switch(response){
      case 200:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
      case 400:
      throw BadRequestException(response.body.toString());
      case 404:
      throw FetchDataException('Error accured while communicating the server'
      +'with status code'+ response.body.toString());
    }
  }
}