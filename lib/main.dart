import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sadio_store/core/app/connectivity_controller.dart';
import 'package:sadio_store/core/app/env_varible.dart';
import 'package:sadio_store/feature/no_network/view/no_network_view.dart';
import 'package:sadio_store/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVarible.instance.envVaribleInit(variableType: EnvironmentType.dev);
  await ConnectivityController.instance.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVarible.instance.envType,
      builder: (context, child) {
        return ValueListenableBuilder(
          valueListenable: ConnectivityController.instance.isContected,
          builder: (_, isConnected, __) {
            return isConnected ? child! : const NoNetworkView();
          },
        );
      },
      home: const Scaffold(),
    );
  }
}
