import 'package:flutter/cupertino.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/widget/response1_widget.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/widget/response2_widget.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/widget/create_{{feature_name.snakeCase()}}2_widget.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/widget/update_{{feature_name.snakeCase()}}2_widget.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/widget/delete_{{feature_name.snakeCase()}}2_widget.dart';
import 'package:{{flutter_project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/presentation/widget/get_all_{{feature_name.snakeCase()}}_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Home page"),
        ),
        Response1(),
        Response2(),
        Create{{feature_name.pascalCase()}}2(),
        Update{{feature_name.pascalCase()}}2(),
        Delete{{feature_name.pascalCase()}}2(),
        GetAll{{feature_name.pascalCase()}}(),
      ],
    );
  }
}
