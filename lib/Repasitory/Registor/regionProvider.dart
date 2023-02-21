import 'package:eppa/libruaryclass.dart';

class RegionProvider extends ChangeNotifier {
  bool isLoading = false;
  set(isLoading2) {
    isLoading = isLoading2;
    notifyListeners();
  }
  List<RegionModel> data = [];
  Future<void> getdata() async {
    set(true);
    data = await RegionService().regionservice();
    print(data.length);
    set(false);
  }
}
