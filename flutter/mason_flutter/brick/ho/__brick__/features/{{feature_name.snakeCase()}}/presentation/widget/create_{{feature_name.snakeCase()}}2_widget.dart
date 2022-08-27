import 'package:flutter/material.dart';

import 'package:flutter_dizi_ayraci/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';
import 'package:flutter_dizi_ayraci/features/{{feature_name.snakeCase()}}/presentation/state_management/controller/{{feature_name.snakeCase()}}_controller.dart';

import 'package:get/get.dart';

class Create{{feature_name.pascalCase()}}2 extends StatelessWidget {
  const Create{{feature_name.pascalCase()}}2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          String json =
              '{"documentId": "{{documentId2}}","name": "{{feature_name.camelCase()}}Name2"}';

          {{feature_name.pascalCase()}} {{feature_name.camelCase()}} = {{feature_name.pascalCase()}}.fromJson(json);

          // DataApi.createUser({{feature_name.camelCase()}});
          Get.find<{{feature_name.pascalCase()}}Controller>().create{{feature_name.pascalCase()}}({{feature_name.pascalCase()}}.fromJson(json));
        },
        child: Text("Create {{documentId2}}"));
  }
}
