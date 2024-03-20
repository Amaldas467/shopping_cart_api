import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreencontroller with ChangeNotifier {
  Future<void> fetchdata() async {
    final url = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(url);
    print(response.statusCode);
    print(response.body);
  }
}
