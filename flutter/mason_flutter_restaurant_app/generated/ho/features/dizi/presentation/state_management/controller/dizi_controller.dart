import 'package:dizi_ayraci_deneme2/features/dizi/data/firebase_data_api.dart';
import 'package:dizi_ayraci_deneme2/features/dizi/domain/entity/dizi.dart';

import 'package:get/get.dart';

class DiziController extends GetxController {
  
  final dizilar = <Dizi>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // fetchCityler();
  }

  Future<Dizi> getDizi(Dizi dizi) async {
    return FirebaseDataApi.response1(dizi);
  }

  Future<void> createDizi(Dizi dizi) async {
    FirebaseDataApi.createDizi(dizi);
  }

  Future<void> updateDizi(Dizi dizi) async {
    FirebaseDataApi.updateDizi(dizi);
  }

  Future<void> deleteDizi(Dizi dizi) async {
    FirebaseDataApi.deleteDizi(dizi);
  }

  Future<List<Dizi>> getAllDizi() async {
    var v = await FirebaseDataApi.getAllDizi();

    print(dizilar.length);
    // for (var fff in v) {
    //   userlar.value.add(fff);
    // }
    dizilar.assignAll(v);
    print("length of dizilar: " + dizilar.length.toString());

    return dizilar;
  }
}
