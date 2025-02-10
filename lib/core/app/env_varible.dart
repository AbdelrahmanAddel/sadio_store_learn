import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvironmentType { dev, prod }

class EnvVarible {
  EnvVarible._();
  String _envType = '';
  static final EnvVarible instance = EnvVarible._(); //TODO
  Future<void> envVaribleInit({required EnvironmentType variableType}) async {
    switch (variableType) {
      case EnvironmentType.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvironmentType.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  bool get envType => _envType == 'dev';
}












// import 'package:flutter_dotenv/flutter_dotenv.dart';

// enum EnvType { dev, prod }

// class EnvVariable {
//   EnvVariable._();

//   static final EnvVariable instance = EnvVariable._();

//   String _envType = '';

//   Future<void> init({required EnvType envType}) async {
//     switch (envType) {
//       case EnvType.dev:
//         await dotenv.load(fileName: '.env.dev');
//       case EnvType.prod:
//         await dotenv.load(fileName: '.env.prod');
//     }
//     _envType = dotenv.get('ENV_TYPE');
//   }

//   String get envType => _envType;
// }
