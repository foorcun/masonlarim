import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/firebase_data_api.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}.dart';

import 'package:get/get.dart';

class {{feature_name.pascalCase()}}Controller extends GetxController {
  
  final {{feature_name.camelCase()}}lar = <{{feature_name.pascalCase()}}>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // fetchCityler();
  }

  Future<{{feature_name.pascalCase()}}> get{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    return FirebaseDataApi.response1({{feature_name.camelCase()}});
  }

  Future<void> create{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    FirebaseDataApi.create{{feature_name.pascalCase()}}({{feature_name.camelCase()}});
  }

  Future<void> update{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    FirebaseDataApi.update{{feature_name.pascalCase()}}({{feature_name.camelCase()}});
  }

  Future<void> delete{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    FirebaseDataApi.delete{{feature_name.pascalCase()}}({{feature_name.camelCase()}});
  }

  Future<List<{{feature_name.pascalCase()}}>> getAll{{feature_name.pascalCase()}}() async {
    var v = await FirebaseDataApi.getAll{{feature_name.pascalCase()}}();

    print({{feature_name.camelCase()}}lar.length);
    // for (var fff in v) {
    //   userlar.value.add(fff);
    // }
    {{feature_name.camelCase()}}lar.assignAll(v);
    print("length of {{feature_name.camelCase()}}lar: " + {{feature_name.camelCase()}}lar.length.toString());

    return {{feature_name.camelCase()}}lar;
  }
}
