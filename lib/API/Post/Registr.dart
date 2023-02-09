import 'dart:convert';
import 'package:http/http.dart' as http;
class RegistrationService {
  Future Registor({
    required String phone, 
    required String full_name
  }) async {
    var request = http.MultipartRequest(
      'post',
      Uri.parse('https://e-roommate.uz/admin/api/user/user-registration'),
    );
    request.fields.addAll({
      'phone': phone, 
      'full_name': full_name
    });
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();      
      return jsonDecode(data);
    }
  }
}
