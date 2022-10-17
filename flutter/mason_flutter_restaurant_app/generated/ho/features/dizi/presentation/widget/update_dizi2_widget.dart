import 'package:flutter/material.dart';

import 'package:dizi_ayraci_deneme2/features/dizi/domain/entity/dizi.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/state_management/controller/dizi_controller.dart';
import 'package:get/get.dart';

class UpdateDizi2 extends StatelessWidget {
  const UpdateDizi2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          String json =
              '{"documentId": "beybibeybi","name": "diziName2-updated"}';

          Dizi dizi = Dizi.fromJson(json);

          // DataApi.updateUser(myUser);
          Get.find<DiziController>().updateDizi(Dizi.fromJson(json));
        },
        child: Text("Update beybibeybi"));
  }
}
