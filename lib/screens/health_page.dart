import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indu_wellness/constants.dart';
import 'package:indu_wellness/screens/health_details.dart';
import 'package:indu_wellness/screens/map_locator.dart';
import 'package:indu_wellness/screens/yoga_screen.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        automaticallyImplyLeading: false,
        title: Text("Health Analysis".tr),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const YogaScreen(),
                ),
              );
            },
            child: Text(
              "Yoga".tr,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
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
            childAspectRatio: 1.5/0.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
          ),
          children: <Widget>[
            TextButton(
              onPressed: () {
                problemSolution(title: "Menstrual Cramps", index: 0);
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
                "Menstrual Cramps".tr,
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
                problemSolution(title: "Heavy Bleeding", index: 1);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Heavy Bleeding".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Irregular Periods", index: 2);
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
              child: Text("Irregular Periods".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Premenstrual Syndrome (PMS)", index: 3);
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
              child: Text("Premenstrual Syndrome (PMS)".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 17.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Endometriosis", index: 4);
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
              child: Text("Endometriosis".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(
                    title: "Polycystic Ovary Syndrome (PCOS)", index: 5);
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
              child: Text("Polycystic Ovary Syndrome (PCOS)".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Fibroids", index: 6);
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
              child: Text("Fibroids".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Menorrhagia", index: 7);
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
              child: Text("Menorrhagia".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                problemSolution(title: "Amenorrhea", index: 8);
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
              child: Text("Amenorrhea".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        backgroundColor: const Color.fromARGB(255, 56, 126, 59),
        child: const Icon(
          Icons.location_on,
          color: Colors.amber,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapLocator(),
            ),
          );
        },
      ),
    );
  }

  void problemSolution({required String title, required int index}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HealthDetailScreen(
          title: title,
          index: index,
        ),
      ),
    );
  }
}
