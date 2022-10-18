import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/state_management/controller/{{feature_name.snakeCase()}}_controller.dart';


class Response1 extends StatelessWidget {
  const Response1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // DataApi.printTest();
          // DataApi.response1();
        var element =   Get.find<{{feature_name.pascalCase()}}Controller>().getById{{feature_name.pascalCase()}}(1);
          print(element.toString());

        },
        child: Text("Response1"));
  }
}
