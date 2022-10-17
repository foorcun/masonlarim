import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/restaurant/domain/entity/restaurant.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/state_management/controller/restaurant_controller.dart';

import 'package:get/get.dart';

class GetAllRestaurant extends StatelessWidget {
  const GetAllRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.find<RestaurantController>().restaurantlar.length.toString());
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              // DataApi.printTest();
              // DataApi.response1();
              // String json = '{"documentId": "beybibeybi"}';
              Get.find<RestaurantController>().getAllRestaurant();
            },
            child: Text("Get all restaurantlar")),
        SizedBox(
          height: 400,
          child: Obx(
            () => ListView.builder(
                // shrinkWrap: true,
                itemCount: Get.find<RestaurantController>().restaurantlar.length,
                itemBuilder: (BuildContext context, int index) {
                  print("ListView index " + index.toString());
                  return ListTile(
                    title: Text(Get.find<RestaurantController>()
                        .restaurantlar[index]
                        .id!),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
