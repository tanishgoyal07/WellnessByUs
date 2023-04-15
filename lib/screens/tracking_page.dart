import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indu_wellness/constants.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Tracking Page".tr),
      ),
      body:  Center(
        child: Text("Tracking Page".tr),
      ),
    );
  }
}
