import 'package:dio/dio.dart';
import 'package:ticket/services/interceptor.dart';

class API {
  late final Dio dio;

  API() {
    dio = Dio();
    dio.interceptors.add(CustomInterceptors());
  }

  final String base_url = 'https://gecommerce-nest-api.onrender.com/auth/login';

  Map<String, dynamic> get loginData =>
      {"username": "gualter", "password": "123456"};

  Future<bool> login() async {
    final response = await dio.post(base_url, data: loginData);
    if(response.statusCode == 200){
      print('Login com sucesso!');
      print(response);
      return true;
    }
    else{
    print('Login Falhou');
    return false;
    }
  }
}
