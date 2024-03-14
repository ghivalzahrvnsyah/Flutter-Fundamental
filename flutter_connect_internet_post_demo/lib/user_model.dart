import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String? id;
  String? name;

  User({
    this.id,
    this.name,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      // Handle null values gracefully
      name: (object['first_name'] ?? '') + " " + (object['last_name'] ?? ''),
    );
  }

  static Future<User> connectToApi(String id) async {
    // Concatenate the id properly to the URL
    Uri apiUrl = Uri.parse("https://reqres.in/api/users/$id");

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    if (jsonObject.containsKey('data')) {
      var userData = jsonObject['data'];
      return User.createUser(userData);
    } else {
      // If data is not found, return null
      return User();
    }
  }

  static Future<List<User>> getUsers(String page) async {
    Uri apiUrl = Uri.parse("https://reqres.in/api/users?page=$page");

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }

    return users;
  }
}
