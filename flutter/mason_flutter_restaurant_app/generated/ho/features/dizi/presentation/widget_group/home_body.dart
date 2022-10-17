import 'package:flutter/cupertino.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/widget/response1_widget.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/widget/response2_widget.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/widget/create_dizi2_widget.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/widget/update_dizi2_widget.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/widget/delete_dizi2_widget.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/presentation/widget/get_all_dizi_widget.dart';

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
        CreateDizi2(),
        UpdateDizi2(),
        DeleteDizi2(),
        GetAllDizi(),
      ],
    );
  }
}
