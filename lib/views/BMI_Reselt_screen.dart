import 'package:flutter/material.dart';

class BMI_Reselt_screen extends StatelessWidget {
  const BMI_Reselt_screen({super.key, required this.isMale, required this.age, required this.height, required this.weight, required this.result});
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
        foregroundColor: isMale ? Colors.blue : Colors.red,
        backgroundColor: Colors.black87,
        elevation: 0,
        title: const Text(
          'RESULT',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
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
                          color: isMale ? Colors.blue : Colors.red,
                          image: AssetImage(
                            isMale
                                ? 'assats/man.png'
                                : 'assats/woman.png',
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
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100],
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        'AGE',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '${age.round()}',
                                        style: TextStyle(
                                            color: currentColor(),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[100],
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(
                                          'HEIGHT',
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          '${height.round()}',
                                          style: TextStyle(
                                              color: currentColor(),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100],
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        'WEIGHT',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '${weight.round()}',
                                        style: TextStyle(
                                            color: currentColor(),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              children: [
                                Text(
                                  'BMI',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      '${result.round()}',
                                      style: TextStyle(
                                          color: currentColor(),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100],
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              children: [
                                Text(
                                  'STATUS',
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      statusText(),
                                      style: TextStyle(
                                          color: currentColor(),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color currentColor() => isMale ? Colors.blue : Colors.red;

  String statusText() {
    if (result <= 16) {
      return "Severe Thinness";
    } else if (result > 16 && result <= 17) {
      return "Moderate Thinness";
    } else if (result > 17 && result <= 18.5) {
      return "Mild Thinness";
    } else if (result > 18.5 && result <= 25) {
      return "Normal";
    } else if (result > 25 && result <= 30) {
      return "Overweight";
    } else if (result > 30 && result <= 35) {
      return "Obese Class I";
    } else if (result > 35 && result <= 40) {
      return "Obese Class II";
    } else {
      return "Obese Class III";
    }
  }
}