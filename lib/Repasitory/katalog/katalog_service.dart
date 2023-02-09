import 'dart:convert';
import 'package:eppa/Repasitory/katalog/epa_model.dart';
import 'package:flutter/services.dart';

class KatalogService {
  Future<List<dynamic>> katalogservice() async {
   try{
    final jsondata = await rootBundle.loadString("assets/json/epa.json");
    final listdata = await json.decode(jsondata) as List<dynamic>;
    List<dynamic> data = listdata.map((e) => KatalogModel.fromJson(e)).toList();
    print("$data ++++");
    return data;
   }catch(e){
    return[];
  }
  }
}