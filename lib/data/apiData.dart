import 'dart:convert';

import 'package:covid_19/models/Tcases.dart';
import 'package:http/http.dart' as http;

class ApiData {
  var url = Uri.parse('https://corona.lmao.ninja/v2/all');

  Future<Tcases> getJsonData() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final convertDataJson = jsonDecode(response.body);
      print(convertDataJson);
      return Tcases.fromJson(convertDataJson);
    } else {
      throw Exception("try to reload");
    }
  }
}
