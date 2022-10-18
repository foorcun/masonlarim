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

  Future<{{feature_name.pascalCase()}}> getById{{feature_name.pascalCase()}}(int id) async {

     for (var element in {{feature_name.camelCase()}}lar.value) {
      if (element.id == id) {
        return element;
      }
    }
    print("{{feature_name.camelCase()}} id bulunamadi");
    return {{feature_name.pascalCase()}}.empty();
  }

  Future<void> create{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
   await  FirebaseDataApi.create{{feature_name.pascalCase()}}({{feature_name.camelCase()}});
   await getAll{{feature_name.pascalCase()}}();
  }

  Future<void> update{{feature_name.pascalCase()}}({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) async {
    {{feature_name.camelCase()}}.id =  {{feature_name.camelCase()}}lar[1].id;

    await FirebaseDataApi.update{{feature_name.pascalCase()}}({{feature_name.camelCase()}});
    await getAll{{feature_name.pascalCase()}}();
  }

  Future<void> delete{{feature_name.pascalCase()}}(int id) async {
    await FirebaseDataApi.delete{{feature_name.pascalCase()}}(id);
    await getAll{{feature_name.pascalCase()}}();
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
