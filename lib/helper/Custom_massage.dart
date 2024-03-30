import 'package:bmi/helper/contest.dart';
import 'package:flutter/material.dart';

class Custom_massage extends StatelessWidget {
  const Custom_massage({super.key, required this.State, required this.isMale});
  final String State;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ' You Are $State : ',
                  style: TextStyle(
                      color: currentColor(),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  '${statusMassge()}',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color currentColor() => isMale ? meColor : FeColor;
  String statusMassge() {
    if (State == "Underweight ") {
      return "You may not be eating enough or an underlying illness could be preventing you from gaining weight. Underweight adults are at increased risk of weakened immune system, fragile bones and may experience low energy levels. If you struggle to gain weight, see a GP.";
    } else if (State == "Normal weight") {
      return "Adults in the normal range are considered to have a healthy weight.  Maintain it with regular exercise and a healthy diet.";
    } else if (State == "Overweight") {
      return "A high proportion of adults fall into the overweight category. It may feel unfair to get a result like this. There are factors that may cause your BMI to be inaccurate - if you have high muscle bulk for example.That's why it's important to look at a range of measurements to get a better overall picture of your health. However, this is a good time to make an honest assessment of your lifestyle to see if you should reduce calories in your diet or increase the calories you burn with exercise.The higher you fall within this bracket the higher your risk of cardiovascular disease.";
    } else {
      return "Being obese significantly increases your risk of developing heart disease and type 2 diabetes. If you fall into this category you should see a GP and ask their advice on bringing down your weight.";
    }
  }
}
