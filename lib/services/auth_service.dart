// ini untuk melakukan request ke dalam BE
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class AuthService{

  String baseUrl = ('http://127.0.0.1:8000/api');

  Future<UserModel> register({
    required String name, 
    required String username,
    required String email,
    required String password,
  }) async {

    // var url = '$baseUrl/register';
    var url = Uri.parse('$baseUrl/register');
    var headers = {'content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    // nah disini yg akan digunakan untuk melakukan request ke dalam BE kita, menggunakan http
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    // mencoba apakah respon nya 200
    if(response.statusCode == 200){
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer  ${data['access_token']}';

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }
}