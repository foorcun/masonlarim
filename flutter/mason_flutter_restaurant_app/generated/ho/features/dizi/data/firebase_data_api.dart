import 'package:dizi_ayraci_deneme2/features/dizi/domain/entity/dizi.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';



class FirebaseDataApi {
  static var httplocalhost = 'http://localhost:8080';

  static printTest() {


    print("deneme printi");
  }



    static Future<Dizi> response1(Dizi dizi) async {
    Uri uri =
        Uri.parse("$httplocalhost/api/getDizi?documentId=" + dizi.documentId!);

    http.Response response = await http.get(uri);
    print("gelen " + dizi.documentId! + " : ");
    print(response.body);
    // return response;

    if (response.body == "") {
      return Dizi.empty();
    }
    return Dizi.fromJson(response.body);
  }

    static Future<void> createDizi(Dizi dizi) async {
    Uri uri = Uri.parse("$httplocalhost/api/createDizi");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2",
    //   // "name": "Programming knowledge",
    //   "profession": "youtuber"
    // };
    // String body = jsonEncode(postData);

    String body = dizi.toJson();

    var response = await http.post(
      uri,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("createDizi response");
    print(response.body);
  }


    static Future<void> updateDizi(Dizi dizi) async {
    Uri uri = Uri.parse("$httplocalhost/api/updateDizi");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2", // bir bilgiyi eksik veririsek put kodu calismaz
    //   "name": "Programming knowledge",
    //   "profession": "youtuber + yeni data"
    // };
    // final body = jsonEncode(postData);

    String body = dizi.toJson();

    var response = await http.put(
      uri,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("updateDizi response");
    print(response.body);
  }

  static Future<void> deleteDizi(Dizi dizi) async {
    // Uri uri = Uri.parse("$httplocalhost/delete?documentId=user_2");
    Uri uri =
        Uri.parse("$httplocalhost/api/deleteDizi?documentId=${dizi.documentId!}");

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

    print("deleteDizi response");
    print(response.body);
  }

    static Future<List<Dizi>> getAllDizi() async {
    // static Future<void> getAllUser() async {
    Uri uri = Uri.parse("$httplocalhost/api/getAllDizi");

    http.Response response = await http.get(uri);
    print("gelen getAllDizi ");
    print(response.body);

    List<Dizi> list = [];

    if (response.body == "") {
      return list;
    }

    List<dynamic> v = jsonDecode(response.body);
    print("gelen degerler :");

    // print(v[0]);
    for (Map<String, dynamic> map in v) {
      // print(map);

      list.add(Dizi.fromMap(map));
      print(Dizi.fromMap(map).toString());
    }
    // return MyUser.fromJson(response.body);

    return list;

    // return response;
  }
}
