import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';



class FirebaseDataApi {
  static var httplocalhost = 'http://localhost:9090';

  static printTest() {


    print("deneme printi");
  }



    static Future<Restaurant> response1(Restaurant restaurant) async {
    Uri uri =
        Uri.parse("$httplocalhost/api/getRestaurant?id=" + restaurant.id!.toString());

    http.Response response = await http.get(uri);
    print("gelen " + restaurant.id!.toString() + " : ");
    print(response.body);
    // return response;

    if (response.body == "") {
      return Restaurant.empty();
    }
    return Restaurant.fromJson(response.body);
  }

    static Future<void> createRestaurant(Restaurant restaurant) async {
    Uri uri = Uri.parse("$httplocalhost/api/createRestaurant");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2",
    //   // "name": "Programming knowledge",
    //   "profession": "youtuber"
    // };
    // String body = jsonEncode(postData);

    String body = restaurant.toJson();

    var response = await http.post(
      uri,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("createRestaurant response");
    print(response.body);
  }


    static Future<void> updateRestaurant(Restaurant restaurant) async {
    Uri uri = Uri.parse("$httplocalhost/api/updateRestaurant");

    // Map<String, dynamic> postData = {
    //   "documentId": "user_2", // bir bilgiyi eksik veririsek put kodu calismaz
    //   "name": "Programming knowledge",
    //   "profession": "youtuber + yeni data"
    // };
    // final body = jsonEncode(postData);

    String body = restaurant.toJson();

    var response = await http.put(
      uri,
      body: body,
      headers: {
        "Content-Type": "application/json",
      },
    );

    print("updateRestaurant response");
    print(response.body);
  }

  static Future<void> deleteRestaurant(int id) async {
    // Uri uri = Uri.parse("$httplocalhost/delete?documentId=user_2");
    Uri uri =
        Uri.parse("$httplocalhost/api/deleteRestaurant?id=$id");

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

    print("deleteRestaurant response");
    print(response.body);
  }

    static Future<List<Restaurant>> getAllRestaurant() async {
    // static Future<void> getAllUser() async {
    Uri uri = Uri.parse("$httplocalhost/api/getAllRestaurant");

    http.Response response = await http.get(uri);
    print("gelen getAllRestaurant ");
    print(response.body);

    List<Restaurant> list = [];

    if (response.body == "") {
      return list;
    }

    List<dynamic> v = jsonDecode(response.body);
    // print("gelen degerler :");

    // print(v[0]);
    for (Map<String, dynamic> map in v) {
      // print(map);

      list.add(Restaurant.fromMap(map));
      // print(Restaurant.fromMap(map).toString());
    }
    // return MyUser.fromJson(response.body);

    return list;

    // return response;
  }
}
