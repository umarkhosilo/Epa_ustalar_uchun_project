import 'package:eppa/Repasitory/katalog/katalog_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EpaProvider extends ChangeNotifier {
 bool isLoading = false;
 set(isLoading2){
  isLoading = isLoading2;
  notifyListeners();
 }
 List<dynamic> data = [];

 Future<void> getdata()async{
  set(true);
  data = await KatalogService().katalogservice();
  print(data);
  set(false);
 }
}