import 'package:bmi/helper/Custom_cotainer.dart';
import 'package:bmi/helper/Custom_massage.dart';
import 'package:bmi/helper/contest.dart';
import 'package:bmi/views/BMI_SCREEN.dart';
import 'package:flutter/material.dart';

class BMI_Reselt_screen extends StatelessWidget {
  const BMI_Reselt_screen(
      {super.key,
      required this.isMale,
      required this.age,
      required this.height,
      required this.weight,
      required this.result});
  final bool isMale;
  final double age;
  final double height;
  final double weight;
  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        foregroundColor: isMale ? meColor : FeColor,
        backgroundColor: Colors.black87,
        elevation: 0,
        title: const Text(
          'RESULT',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[400],
                    ),
                    child: Column(
                      children: [
                        Image(
                          height: 60,
                          // color: isMale ? meColor: FeColor,
                          image: AssetImage(
                            isMale ? 'assets/man.png' : 'assets/woman.png',
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          isMale ? 'MALE' : 'FEMALE',
                          style: TextStyle(
                            fontSize: 24,
                            color: currentColor(),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                                child: Custome_container(
                                    Titel: 'Age',
                                    data: '${age.round()}',
                                    isMale: isMale)),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Custome_container(
                              Titel: 'HEIGHT',
                              data: '${height.round()}',
                              isMale: isMale,
                            )),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Custome_container(
                                    Titel: 'weight',
                                    data: '${weight.round()}',
                                    isMale: isMale))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[400],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Custome_container(
                          Titel: 'BMI',
                          data: '${result.round()}',
                          isMale: isMale,
                        )),
                        const SizedBox(width: 10),
                        Expanded(
                            child: Custome_container(
                          Titel: 'STATUS',
                          data: '${statusText()}',
                          isMale: isMale,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Custom_massage(State: statusText(), isMale: isMale),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color currentColor() => isMale ? meColor : FeColor;

  String statusText() {
    if (result <= 18.5) {
      return "Underweight";
    } else if (result > 18.5 && result <= 25) {
      return "Normal weight";
    } else if (result > 25 && result <= 30) {
      return "Overweight";
    } else {
      return "Obese ";
    }
  }
}
