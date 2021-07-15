import 'dart:convert';

import 'package:flutter_get_demo/model/Book.dart';
import 'package:flutter_get_demo/network/Ws.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static var client = http.Client();

  static fetchBooks() async {
    var response = await client.get(
      Uri.parse('$API_GET_BOOKS_LIST'),
    );

    if (response.statusCode == SUCCESS) {
      var data = json.decode(response.body);
      var list = data['books'] as List;
      return list.map((e) => Book.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
