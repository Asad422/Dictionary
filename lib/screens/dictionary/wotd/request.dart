import 'dart:io';

import 'package:dio/dio.dart';
final dio = Dio();
final apiKey = 'dict.1.1.20230510T145529Z.dff80f07f6247b08.f6a7b62f40d0bd116681e7cb3a7ddcb676c1c08b';


Future <String> request(String word) async {

  Response response;
  try{
  response = await dio.get('https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key=$apiKey&lang=en-ru&text=$word');
  switch(response.statusCode){
    case 200 : 
    final translationWord = response.data['def'][0]['tr'][0]['text'];
    return translationWord ;
    default : 
      throw Exception(response.statusMessage);
  }
  
  }
  on SocketException catch (_){
    rethrow;
  }

    
  }
  