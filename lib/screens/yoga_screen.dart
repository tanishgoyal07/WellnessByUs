import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YogaScreen extends StatefulWidget {
  const YogaScreen({
    super.key,
  });

  @override
  State<YogaScreen> createState() => _YogaScreenState();
}

class _YogaScreenState extends State<YogaScreen> {
  List<String> yogaTitle = [
    "Matsyasana (Fish Pose)",
    "Dhanurasana (Bow Pose)",
    "Adho Mukha Svanasana (Downward Facing Dog Pose)",
    "Malasana (Garland Pose)",
    "Ustrasana (Camel Pose)"
  ];

  List<String> yoga = [
    "To do the Fish Pose, first lie on your back and put your arms under your hips with your elbows touching your waist. Bend both legs and put them in a crossed position with your knees and thighs touching the ground. Then lift your upper body and head off the ground while breathing in. Hold this position for a little while, then breathe out and relax your body.",
    "To perform the Bow Pose, lie on your stomach with your feet slightly apart and your arms beside your body. Then, hold onto your ankles with your hands and lift your lower legs. Take a deep breath and raise your chest and legs off the ground. Try to hold this position for as long as you can, then slowly bring your upper body and legs back down to the ground.",
    "To do the Downward Facing Dog Pose, start on your hands and knees with your arms straight and your head facing forward. Bend your knees and stretch your lower legs out behind you so your body looks like a table. Then, while breathing out, lift your hips and straighten your arms to create a V-shape. Keep extending your arms to lift your body and hold this pose for a few minutes. Finally, gently relax and return to the table position.",
    "To do the Garland Pose, begin by sitting comfortably on the floor in a squatting position with your heels on the ground, your thighs spread apart, and your feet close together. Breathe out and bend your body forward, fitting your torso in between your thighs. Fold your hands, place your elbows on the inner thighs, and apply some pressure. Swing your arms and slightly lift your heels, then gradually return to the squatting position and relax.",
    "To do the Camel Pose, first kneel on the ground with your heels facing upwards and your hands on your hips. Ensure that your knees and shoulders are aligned in a straight line. Take a deep breath and bend your back, holding onto your feet with your hands for balance. Keep this pose for one minute, then slowly return your back to an upright position and relax your legs and hands.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 126, 59),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Yoga Postures".tr,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Text(
                    yogaTitle[0].tr,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    yoga[0].tr,
                     style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(image: AssetImage("assets/fish.jpg")),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    yogaTitle[1].tr,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    yoga[1].tr,
                     style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(image: AssetImage("assets/bow.jpg")),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    yogaTitle[2].tr,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    yoga[2].tr,
                     style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(image: AssetImage("assets/downward-dog.jpg")),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    yogaTitle[3].tr,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    yoga[3].tr,
                     style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(image: AssetImage("assets/yoga4.jpg")),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    yogaTitle[4].tr,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    yoga[4].tr,
                     style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(image: AssetImage("assets/camel.jpg")),
                ],
              )),
        ),
      ),
    );
  }
}
