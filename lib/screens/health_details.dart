import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HealthDetailScreen extends StatefulWidget {
  final String title;
  final int index;
  const HealthDetailScreen(
      {super.key, required this.index, required this.title});

  @override
  State<HealthDetailScreen> createState() => _HealthDetailScreenState();
}

class _HealthDetailScreenState extends State<HealthDetailScreen> {
  List<String> problems = [
    "Painful cramps in the lower abdomen, back, and legs that some women feel during their period. It's caused by the uterus contracting to shed its lining. Over-the-counter painkillers, heat therapy, and exercise can help.",
    "When women have very heavy bleeding during their period, it can cause fatigue and anemia. Painkillers are some of the recommended treatment options.",
    "Periods that come at unexpected times or vary in length can be inconvenient or worrying. Hormonal imbalances, thyroid problems, or other medical conditions can cause this. Treatment options depend on the cause.",
    "A group of symptoms that women may experience before their period, such as mood swings, bloating, breast tenderness, and headaches. Treatment options include painkillers, lifestyle changes, or hormonal birth control.",
    "When tissue similar to the uterus lining grows outside the uterus, causing pain and discomfort during menstruation. Painkillers, hormonal therapy may be used for treatment.",
    "A hormonal disorder that can cause weight gain, fertility problems, and irregular periods. Treatment options include lifestyle changes, hormonal birth control, or other medications.",
    "Non-cancerous growths in the uterus that can cause heavy periods and pain. Hormonal therapy or surgery may be used for treatment.",
    "condition where women experience prolonged or heavy bleeding during their period, which can lead to anemia and fatigue. Painkillers may be used for treatment.",
    "When women do not have periods, it can be caused by factors such as pregnancy, breastfeeding, hormonal imbalances, or underlying medical conditions. Treatment options depend on the cause and may include lifestyle changes or medication.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 126, 59),
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.title.tr,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            widget.index == 0
                ? problems[0]
                : widget.index == 1
                    ? problems[1]
                    : widget.index == 2
                        ? problems[2]
                        : widget.index == 3
                            ? problems[3]
                            : widget.index == 4
                                ? problems[4]
                                : widget.index == 5
                                    ? problems[5]
                                    : widget.index == 6
                                        ? problems[6]
                                        : widget.index == 7
                                            ? problems[7]
                                            : problems[8],
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
