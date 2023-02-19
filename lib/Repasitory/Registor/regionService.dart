import 'package:eppa/libruaryclass.dart';

class RegionService {
  Future<List<RegionModel>> regionservice() async {
    try {
      final jsondata = await rootBundle.loadString("assets/json/region.json");
      final listdata = await json.decode(jsondata) as List<dynamic>;
      List<RegionModel> data =
          listdata.map((e) => RegionModel.fromJson(e)).toList();
      return data;
    } catch (e) {
      return [];
    }
  }
}
