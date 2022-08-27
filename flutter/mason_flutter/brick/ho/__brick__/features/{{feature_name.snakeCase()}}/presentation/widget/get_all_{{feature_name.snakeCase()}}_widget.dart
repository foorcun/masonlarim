import 'package:flutter/material.dart';
import 'package:flutter_dizi_ayraci/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';
import 'package:flutter_dizi_ayraci/features/{{feature_name.snakeCase()}}/presentation/state_management/controller/{{feature_name.snakeCase()}}_controller.dart';

import 'package:get/get.dart';

class GetAll{{feature_name.pascalCase()}} extends StatelessWidget {
  const GetAll{{feature_name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.find<{{feature_name.pascalCase()}}Controller>().{{feature_name.camelCase()}}lar.length.toString());
    return Column(
      children: [
        ElevatedButton(
            onPressed: () async {
              // DataApi.printTest();
              // DataApi.response1();
              // String json = '{"documentId": "{{documentId2}}"}';
              Get.find<{{feature_name.pascalCase()}}Controller>().getAll{{feature_name.pascalCase()}}();
            },
            child: Text("Get all {{feature_name.camelCase()}}lar")),
        SizedBox(
          height: 400,
          child: Obx(
            () => ListView.builder(
                // shrinkWrap: true,
                itemCount: Get.find<{{feature_name.pascalCase()}}Controller>().{{feature_name.camelCase()}}lar.length,
                itemBuilder: (BuildContext context, int index) {
                  print("index " + index.toString());
                  return ListTile(
                    title: Text(Get.find<{{feature_name.pascalCase()}}Controller>()
                        .{{feature_name.camelCase()}}lar[index]
                        .documentId!),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
