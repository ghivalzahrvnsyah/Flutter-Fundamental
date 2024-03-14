import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResultModel {
  String? name;
  String? job;
  String? id;
  String? createdAt;

  // Konstruktor
  PostResultModel({this.name, this.job, this.id, this.createdAt});

  // Factory method
  factory PostResultModel.createPostResultModel(Map<String, dynamic> object) {
    return PostResultModel(
        name: object['name'],
        job: object['job'],
        id: object['id'],
        createdAt: object['createdAt']);
  }

  // Method untuk melakukan post data
  static Future<PostResultModel> connectToApi(String name, String job) async {
    Uri apiURL = Uri.parse("https://reqres.in/api/users");

    var apiResult =
        await http.post(apiURL , body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResultModel.createPostResultModel(jsonObject);
  }
}
