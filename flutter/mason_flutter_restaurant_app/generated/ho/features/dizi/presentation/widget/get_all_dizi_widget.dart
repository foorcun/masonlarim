import 'package:flutter/material.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/domain/entity/dizi.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/state_management/controller/dizi_controller.dart';

import 'package:get/get.dart';

class GetAllDizi extends StatelessWidget {
  const GetAllDizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.find<DiziController>().dizilar.length.toString());
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              // DataApi.printTest();
              // DataApi.response1();
              // String json = '{"documentId": "beybibeybi"}';
              Get.find<DiziController>().getAllDizi();
            },
            child: Text("Get all dizilar")),
        SizedBox(
          height: 400,
          child: Obx(
            () => ListView.builder(
                // shrinkWrap: true,
                itemCount: Get.find<DiziController>().dizilar.length,
                itemBuilder: (BuildContext context, int index) {
                  print("ListView index " + index.toString());
                  return ListTile(
                    title: Text(Get.find<DiziController>()
                        .dizilar[index]
                        .documentId!),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
