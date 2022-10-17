import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/state_management/controller/{{feature_name.snakeCase()}}_controller.dart';

import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<{{feature_name.pascalCase()}}Controller>({{feature_name.pascalCase()}}Controller());
  }
}
