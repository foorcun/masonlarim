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

  Future<Restaurant> getByIdRestaurant(int id) async {

     for (var element in restaurantlar.value) {
      if (element.id == id) {
        return element;
      }
    }
    print("restaurant id bulunamadi");
    return Restaurant.empty();
  }

  Future<void> createRestaurant(Restaurant restaurant) async {
   await  FirebaseDataApi.createRestaurant(restaurant);
   await getAllRestaurant();
  }

  Future<void> updateRestaurant(Restaurant restaurant) async {
    restaurant.id =  restaurantlar[1].id;

    await FirebaseDataApi.updateRestaurant(restaurant);
    await getAllRestaurant();
  }

  Future<void> deleteRestaurant(int id) async {
    await FirebaseDataApi.deleteRestaurant(id);
    await getAllRestaurant();
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
