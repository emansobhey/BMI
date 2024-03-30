import 'dart:math';

import 'package:bmi/views/BMI_Reselt_screen.dart';
import 'package:flutter/material.dart';

class Bmi_Screen extends StatefulWidget {
  const Bmi_Screen({super.key});

  @override
  State<Bmi_Screen> createState() => _Bmi_ScreenState();
}

class _Bmi_ScreenState extends State<Bmi_Screen> {
  bool _isMale = true;

  double _height = 120;

  double _age = 20;

  double _weight = 40;

  double? result;

  bool get isMale => _isMale;

  double get height => _height;

  double get age => _age;

  double get weight => _weight;

  set weight(double weight) {
    _weight = weight;
    setState(() {});
  }

  set age(double age) {
    _age = age;
    setState(() {});
  }

  set height(double height) {
    _height = height;
    setState(() {});
  }

  set isMale(bool isMale) {
    _isMale = isMale;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        title: Text(
          'BMI Calculator'.toUpperCase(),
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black12,
            height: 600,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isMale ? Colors.blue : Colors.grey[400],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    color: isMale ? Colors.white : Colors.blue,
                                    image: const AssetImage(
                                        'assats/man.png'),
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color:
                                          isMale ? Colors.white : Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => isMale = true,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isMale ? Colors.grey[400] : Colors.red,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    color: !isMale ? Colors.white : Colors.red,
                                    image: const AssetImage(
                                        'assats/woman.png'),
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    'FEMALE',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color:
                                            !isMale ? Colors.white : Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => isMale = false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Height'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 25,
                              color:
                                  isMale ? Colors.blueAccent : Colors.redAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${height.round()}',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: isMale
                                      ? Colors.blueAccent
                                      : Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'CM',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: isMale
                                      ? Colors.blueAccent
                                      : Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            min: 100,
                            max: 220,
                            value: height,
                            thumbColor: isMale ? Colors.blue : Colors.red,
                            activeColor:
                                isMale ? Colors.blueAccent : Colors.redAccent,
                            inactiveColor: Colors.white30,
                            onChanged: (value) => height = value,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[400],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'AGE',
                                    style: TextStyle(
                                      color: isMale
                                          ? Colors.blueAccent
                                          : Colors.redAccent,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${age.round()}',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: isMale
                                          ? Colors.blueAccent
                                          : Colors.redAccent,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        elevation: 0,
                                        heroTag: 'age-',
                                        mini: true,
                                        backgroundColor:
                                            isMale ? Colors.blue : Colors.red,
                                        onPressed: () => age--,
                                        child: const Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        elevation: 0,
                                        heroTag: 'age+',
                                        mini: true,
                                        backgroundColor:
                                            isMale ? Colors.blue : Colors.red,
                                        onPressed: () => age++,
                                        child: const Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[400],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: isMale
                                          ? Colors.blueAccent
                                          : Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${weight.round()}',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: isMale
                                          ? Colors.blueAccent
                                          : Colors.redAccent,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        elevation: 0,
                                        heroTag: 'weight-',
                                        mini: true,
                                        backgroundColor:
                                            isMale ? Colors.blue : Colors.red,
                                        onPressed: () => weight--,
                                        child: const Icon(Icons.remove),
                                      ),
                                      FloatingActionButton(
                                        elevation: 0,
                                        heroTag: 'weight+',
                                        mini: true,
                                        backgroundColor:
                                            isMale ? Colors.blue : Colors.red,
                                        onPressed: () => weight++,
                                        child: const Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isMale ? Colors.blue : Colors.red,
                    ),

                    width: double.infinity,
                    child: TextButton(
                      // style: ButtonStyle(backgroundColor: ),
                      child: const Text(
                        'CALCULATE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => calculateBNI(context),
                    ),
                    // child: const Text('Ahmed'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  calculateBNI(BuildContext context) {
    result = weight / pow(height / 100, 2);
    print(result);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => BMI_Reselt_screen(
                height: height,
                isMale: isMale,
                result: result ?? 0,
                weight: weight,
                age: age,
              )),
    );
  }
}
