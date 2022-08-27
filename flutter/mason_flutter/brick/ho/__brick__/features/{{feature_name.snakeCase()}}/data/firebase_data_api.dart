import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';



class FirebaseDataApi {
  static var httplocalhost = 'http://localhost:8080';

  static printTest() {


    print("deneme printi");
  }



    static Future<{{feature_name.pascalCase()}}> response1({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    Uri uri =
        Uri.parse("$httplocalhost/api/get{{feature_name.pascalCase()}}?documentId=" + {{feature_name.camelCase()}}.documentId!);

    http.Response response = await http.get(uri);
    print("gelen " + {{feature_name.camelCase()}}.documentId! + " : ");
    print(response.body);
    // return response;

    if (response.body == "") {
      return {{feature_name.pascalCase()}}.empty();
    }
    return {{feature_name.pascalCase()}}.fromJson(response.body);
  }

    static Future<void> create{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    Uri uri = Uri.parse("$httplocalhost/api/create{{feature_name.pascalCase()}}");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2",
    //   // "name": "Programming knowledge",
    //   "profession": "youtuber"
    // };
    // String body = jsonEncode(postData);

    String body = {{feature_name.camelCase()}}.toJson();

    var response = await http.post(
      uri,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("create{{feature_name.pascalCase()}} response");
    print(response.body);
  }


    static Future<void> update{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    Uri uri = Uri.parse("$httplocalhost/api/update{{feature_name.pascalCase()}}");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2", // bir bilgiyi eksik veririsek put kodu calismaz
    //   "name": "Programming knowledge",
    //   "profession": "youtuber + yeni data"
    // };
    // final body = jsonEncode(postData);

    String body = {{feature_name.camelCase()}}.toJson();

    var response = await http.put(
      uri,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("update{{feature_name.pascalCase()}} response");
    print(response.body);
  }

  static Future<void> delete{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    // Uri uri = Uri.parse("$httplocalhost/delete?documentId=user_2");
    Uri uri =
        Uri.parse("$httplocalhost/api/delete{{feature_name.pascalCase()}}?documentId=${{{feature_name.camelCase()}}.documentId!}");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2",
    // };
    // final body = jsonEncode(postData);

    var response = await http.put(
      uri,
      // body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("delete{{feature_name.pascalCase()}} response");
    print(response.body);
  }

    static Future<List<{{feature_name.pascalCase()}}>> getAll{{feature_name.pascalCase()}}() async {
    // static Future<void> getAllUser() async {
    Uri uri = Uri.parse("$httplocalhost/api/getAll{{feature_name.pascalCase()}}");

    http.Response response = await http.get(uri);
    print("gelen getAll{{feature_name.pascalCase()}} ");
    print(response.body);

    List<{{feature_name.pascalCase()}}> list = [];

    if (response.body == "") {
      return list;
    }

    List<dynamic> v = jsonDecode(response.body);
    print("gelen degerler :");

    // print(v[0]);
    for (Map<String, dynamic> map in v) {
      // print(map);

      list.add({{feature_name.pascalCase()}}.fromMap(map));
      print({{feature_name.pascalCase()}}.fromMap(map).toString());
    }
    // return MyUser.fromJson(response.body);

    return list;

    // return response;
  }
}
