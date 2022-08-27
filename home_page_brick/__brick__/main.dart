import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{flutter_project_name}}/features/{{#snakeCase}}{{feature_name}}/presentation/state_management/binding/home_page_binding.dart';
import 'package:flutter_user/main_presentation/home_page.dart';
import 'package:get/get.dart';

// flutter run -d chrome --web-hostname localhost --web-port 5000 --no-sound-null-safety
void main() {
  runApp(const MyApp());

  {{namee}}
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  {{#sentanceCase}}{{flutter_project_name}}
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '{{#sentanceCase}}{{flutter_project_name}}',
      initialRoute: "/homePage",
      getPages: [
        GetPage(
            name: "/homePage",
            page: () => HomePage(),
            binding: HomePageBinding())
      ],
    );
  }
}
