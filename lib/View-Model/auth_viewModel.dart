import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm/Utils/routes/routes_names.dart';
import 'package:mvvm/Utils/utils.dart';
import '../Repository/auth_respository.dart';

class AuthViewModel with ChangeNotifier {
  final myRepository = AuthRepository();

  Future<void> loginApi(dynamic data, BuildContext context) async {
    await myRepository.login(data).then((value) {
      Navigator.pushNamed(context, RoutesName.home);
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        Utils utils = Utils();
        utils.flashBarErrorMessage(error.toString(), context);
      }
    });
    notifyListeners();
  }
}
