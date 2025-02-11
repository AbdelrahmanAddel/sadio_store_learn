import 'package:flutter/material.dart';
import 'package:sadio_store/core/constants/assets.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: const BoxConstraints.expand(),
          child: Image.asset(
            Assets.assetsImagesNoNetwork,
            fit: BoxFit.fill,
          )),
    );
  }
}
