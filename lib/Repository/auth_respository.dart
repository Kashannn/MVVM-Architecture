import 'package:mvvm/Data/Network/BaseApiServices.dart';

import '../Data/Network/NetworkApiServices.dart';
import '../Resourcess/App_url.dart';

class AuthRepository {
  BaseNetworkApiServices ApiServices = NetworkApiServices();


  Future<dynamic> login(dynamic data) async {
    try {
      dynamic response = await ApiServices.getPostApiResponse(
          ApiUrl.LOGIN,data
      );
      return response;
    } catch (e) {
      return e;
    }
  }

  Future<dynamic> Signup(dynamic data) async {
    try {
      dynamic response = await ApiServices.getPostApiResponse(
          ApiUrl.REGISTER,data
      );
      return response;
    } catch (e) {
      return e;
    }
  }
}
