import 'package:flutter/cupertino.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget/response1_widget.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget/response2_widget.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget/create_restaurant2_widget.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget/update_restaurant2_widget.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget/delete_restaurant2_widget.dart';
import 'package:restaurant_app_flutter/features/restaurant/presentation/widget/get_all_restaurant_widget.dart';

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
        CreateRestaurant2(),
        UpdateRestaurant2(),
        DeleteRestaurant2(),
        GetAllRestaurant(),
      ],
    );
  }
}
