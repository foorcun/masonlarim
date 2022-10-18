import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';


class Response2 extends StatelessWidget {
  const Response2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();
          // DataApi.response2();
          String json = '{"id": 2}';
          Get.find<RestaurantController>().getByIdRestaurant(2);
        },
        child: Text("Response2"));
  }
}
