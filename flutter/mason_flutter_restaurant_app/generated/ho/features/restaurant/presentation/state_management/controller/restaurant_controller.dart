import 'package:restaurant_app_flutter/features/restaurant/data/firebase_data_api.dart';
import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';

import 'package:get/get.dart';

class RestaurantController extends GetxController {
  
  final restaurantlar = <Restaurant>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // fetchCityler();
  }

  Future<Restaurant> getRestaurant(Restaurant restaurant) async {
    return FirebaseDataApi.response1(restaurant);
  }

  Future<void> createRestaurant(Restaurant restaurant) async {
    FirebaseDataApi.createRestaurant(restaurant);
  }

  Future<void> updateRestaurant(Restaurant restaurant) async {
    FirebaseDataApi.updateRestaurant(restaurant);
  }

  Future<void> deleteRestaurant(Restaurant restaurant) async {
    FirebaseDataApi.deleteRestaurant(restaurant);
  }

  Future<List<Restaurant>> getAllRestaurant() async {
    var v = await FirebaseDataApi.getAllRestaurant();

    print(restaurantlar.length);
    // for (var fff in v) {
    //   userlar.value.add(fff);
    // }
    restaurantlar.assignAll(v);
    print("length of restaurantlar: " + restaurantlar.length.toString());

    return restaurantlar;
  }
}
