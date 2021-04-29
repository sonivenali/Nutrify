import 'dart:io';

import 'package:nutrify/models/result.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Service {
  Future<Result> getResult(String query) async {
    var queryParameters = {
      'ingr': query,
    };
    var url = Uri.https('edamam-edamam-nutrition-analysis.p.rapidapi.com',
        '/api/nutrition-data', queryParameters);
    var response = await http.get(url, headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      "x-rapidapi-key": "012f7f4243mshc324320241828f6p1e7277jsn1dcb928c88ad",
      "x-rapidapi-host": "edamam-edamam-nutrition-analysis.p.rapidapi.com"
    });

    final data = json.decode(response.body);
    print(data);
    try {
      return Result.fromJson(data);
    } catch (e, st) {
      print(st);
    }
  }
}
