import 'package:flutter/material.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/state_management/controller/{{feature_name.snakeCase()}}_controller.dart';

import 'package:get/get.dart';

class Delete{{feature_name.pascalCase()}}2 extends StatelessWidget {
  const Delete{{feature_name.pascalCase()}}2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();

          
          Get.find<{{feature_name.pascalCase()}}Controller>().delete{{feature_name.pascalCase()}}(2);
        },
        child: Text("Delete {{documentId2}}"));
  }
}
