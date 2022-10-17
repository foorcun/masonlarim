import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/domain/entity/dizi.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/state_management/controller/dizi_controller.dart';


class Response1 extends StatelessWidget {
  const Response1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();
          // DataApi.response1();
          String json = '{"documentId": "dizi1"}';
          Get.find<DiziController>().getDizi(Dizi.fromJson(json));
        },
        child: Text("Response1"));
  }
}
