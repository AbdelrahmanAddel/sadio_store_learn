import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();
  static final ConnectivityController instance = ConnectivityController._();
  ValueNotifier<bool> isContected = ValueNotifier(false);
  Future<void> init() async {
    final checkResult = await Connectivity().checkConnectivity();
    checkAppConectivity(checkResult);
    Connectivity().onConnectivityChanged.listen(checkAppConectivity);
  }

  bool checkAppConectivity(ConnectivityResult? checkResult) {
    if (checkResult == ConnectivityResult.none) {
      isContected.value = false;
      return false;
    } else {
      if (checkResult == ConnectivityResult.mobile ||
          checkResult == ConnectivityResult.wifi) {
        isContected.value = true;
        return true;
      } else {
        isContected.value = false;
        return false;
      }
    }
  }
}









// class ConnectivityController {
//   ConnectivityController._();
//   static ConnectivityController instance = ConnectivityController._();
//   ValueNotifier<bool> isContected = ValueNotifier(true);

//   Future<void> init() async {
//     final connectivityResult = await Connectivity().checkConnectivity();
//     isInternetConnection(connectivityResult: connectivityResult.first);
//     Connectivity().onConnectivityChanged.listen(isInternetConnection)
//   }

//   bool isInternetConnection({required ConnectivityResult connectivityResult})
// {
//     if (connectivityResult == ConnectivityResult.none) {
//       isContected.value = false;
//       return false;
//     } else if (connectivityResult == ConnectivityResult.mobile ||
//         connectivityResult == ConnectivityResult.wifi) {
//       isContected.value = true;

//       return true;
//     } else {
//       isContected.value = false;

//       return false;
//     }
//   }
// }
//}
