import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';


class Response1 extends StatelessWidget {
  const Response1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();
          // DataApi.response1();
        var element =   Get.find<RestaurantController>().getByIdRestaurant(1);
          print(element.toString());

        },
        child: Text("Response1"));
  }
}
