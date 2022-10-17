import 'package:flutter/material.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/domain/entity/dizi.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/state_management/controller/dizi_controller.dart';

import 'package:get/get.dart';

class DeleteDizi2 extends StatelessWidget {
  const DeleteDizi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          String json =
              '{"documentId": "beybibeybi","name": ""}';

          Dizi dizi = Dizi.fromJson(json);
          // DataApi.deleteUser(myUser);
          Get.find<DiziController>().deleteDizi(Dizi.fromJson(json));
        },
        child: Text("Delete beybibeybi"));
  }
}
