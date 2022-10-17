import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/state_management/controller/{{feature_name.snakeCase()}}_controller.dart';


class Response2 extends StatelessWidget {
  const Response2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();
          // DataApi.response2();
          String json = '{"documentId": "{{documentId2}}"}';
          Get.find<{{feature_name.pascalCase()}}Controller>().get{{feature_name.pascalCase()}}({{feature_name.pascalCase()}}.fromJson(json));
        },
        child: Text("Response2"));
  }
}
