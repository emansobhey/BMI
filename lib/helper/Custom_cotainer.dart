import 'package:bmi/helper/contest.dart';
import 'package:flutter/material.dart';

class Custome_container extends StatelessWidget {
  const Custome_container({super.key, required this.Titel, required this.data, required this.isMale});
  final String Titel;
  final String data;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              Titel,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              data,
              style: TextStyle(
                  color: currentColor(),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

Color currentColor() => isMale ? meColor : FeColor;
}

