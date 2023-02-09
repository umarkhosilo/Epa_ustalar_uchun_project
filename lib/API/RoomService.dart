import 'dart:io';
import 'dart:convert';
import 'package:eppa/API/RoomModel.dart';
import 'package:http/http.dart' as http;

class RoomServiceClass {
  Future<List<RoomModel>?> fetchFunc() async {
    try {
      var _response = await http.get(
        Uri.parse("http://164.68.114.231:8081/roommate/backend/web/api/region"),
      );
      if (_response.statusCode == 200) {
        List json = jsonDecode(_response.body);
        List<RoomModel> data = json.map((e) => RoomModel.fromJson(e)).toList();
        return data;
      } else {
        return jsonDecode(_response.body);
      }
    } catch (e) {
      print('${e}');
    }
  }
}
