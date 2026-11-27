import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kas/models/post_model.dart';

class ApiService {
  //alamat api
  static const baseUrl = 'https://h2h.bangunsistem.com/api';

  static Future<List<PostModel>> getListPosts() async{
    var url = Uri.parse('$baseUrl/public/posts');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as Map<String, dynamic>;
      var listData = json['data'] as List<dynamic>? ?? [];

      return listData
          .map((item) => PostModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('sistem error');
    }
  }
}