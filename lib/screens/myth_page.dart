import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indu_wellness/constants.dart';
import 'package:indu_wellness/screens/mythbuster_screen.dart';

class MythPage extends StatefulWidget {
  const MythPage({super.key});

  @override
  State<MythPage> createState() => _MythPageState();
}

class _MythPageState extends State<MythPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Myth-Buster".tr),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: GridView(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.5 / 0.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
          ),
          children: <Widget>[
            TextButton(
              onPressed: () {
                problemSolution(
                    title: "You shouldn’t wash your hair during your period.",
                    index: 0);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 130, 199, 133)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text(
                "You shouldn’t wash your hair during your period.".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Periods are shameful", index: 1);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Periods are shameful".tr,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(
                    title: "Women shed impure blood during periods", index: 2);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 130, 199, 133)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Women shed impure blood during periods.".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(
                    title: "If you use a tampon, you lose your virginity.",
                    index: 3);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 130, 199, 133)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("If you use a tampon, you lose your virginity.".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 17.0, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  void problemSolution({required String title, required int index}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MythBUsterPage(
          title: title,
          index: index,
        ),
      ),
    );
  }
}
