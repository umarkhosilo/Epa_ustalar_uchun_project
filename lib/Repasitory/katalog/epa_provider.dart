import 'package:eppa/libruaryclass.dart';

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