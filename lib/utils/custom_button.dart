import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? label;
  Function onClick;

  CustomButton({Key? key, this.label, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Material(
          color: const Color.fromARGB(255, 2, 42, 59),
          child: InkWell(
            splashColor: const Color.fromARGB(255, 237, 211, 210),
            highlightColor: const Color.fromARGB(255, 237, 211, 210),
            onTap: () {
              onClick();
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.transparent, width: 4),
              ),
              child: Text(
                label!,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
