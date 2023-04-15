import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indu_wellness/constants.dart';
import 'package:indu_wellness/main.dart';
import 'package:indu_wellness/screens/checking.dart';
import 'package:indu_wellness/screens/education_infor.dart';
import 'package:indu_wellness/screens/group_chat.dart';
import 'package:indu_wellness/screens/landing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  languageDialoxBox() {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("Select Language".tr),
          children: [
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: Text(
                "English".tr,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                var locale = const Locale('en', 'US');
                Get.updateLocale(locale);
                Navigator.of(context).pop();
              },
            ),
            SimpleDialogOption(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Hindi".tr,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                var locale = const Locale('hi', 'IN');
                Get.updateLocale(locale);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        automaticallyImplyLeading: false,
        title: Text("Hello, ".tr + displayName!),
        actions: [
          TextButton(
            onPressed: languageDialoxBox,
            child: Text(
              "Language".tr,
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
            childAspectRatio: 1.5 / 0.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
          ),
          children: <Widget>[
            TextButton(
              onPressed: () {
                question(title: "Menstrual Hygiene", index: 0);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Menstrual Hygiene".tr,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(title: "Menstrual Precautions", index: 1);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Menstrual Precautions".tr,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(
                    title: "What is a period and why do we have them?",
                    index: 2);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("What is a period and why do we have them?".tr,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(title: "What does a period feel like?", index: 3);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("What does a period feel like?".tr,
                  style: const TextStyle(fontSize: 19.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(title: "Does having your period hurt?", index: 4);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Does having your period hurt?".tr,
                  style: const TextStyle(fontSize: 19.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(
                    title:
                        "What are sanitary pads? How to use and dispose of them?",
                    index: 5);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text(
                  "What are sanitary pads? How to use and dispose of them?".tr,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(title: "What If I Skip a Period?", index: 6);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("What If I Skip a Period?".tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 19.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(
                    title: "Do Tampons Cause Toxic Shock Syndrome?", index: 7);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Do Tampons Cause Toxic Shock Syndrome?".tr,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(
                    title: "Can I Get Pregnant During My Period?", index: 8);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("Can I Get Pregnant During My Period?".tr,
                  style: const TextStyle(fontSize: 19.0, color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                question(title: "How Can I Control PMS Symptoms?", index: 9);
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 95, 175, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Text("How Can I Control PMS Symptoms?".tr,
                  style: const TextStyle(fontSize: 19.0, color: Colors.white)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        backgroundColor: const Color.fromARGB(255, 56, 126, 59),
        child: const Icon(
          Icons.chat_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GroupChatPage(),
            ),
          );
        },
      ),
    );
  }

  void question({required String title, required int index}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EducztionInfoPage(
          title: title,
          index: index,
        ),
      ),
    );
  }
}
