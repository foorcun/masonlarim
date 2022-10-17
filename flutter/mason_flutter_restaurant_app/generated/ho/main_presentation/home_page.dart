import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget_group/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      body: const HomeBody(),
    );
  }
}
