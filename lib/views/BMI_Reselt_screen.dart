import 'package:bmi/helper/Custom_cotainer.dart';
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
      // appBar: AppBar(
      //   foregroundColor: isMale ? Colors.blue : Colors.red,
      //   backgroundColor: Colors.black87,
      //   elevation: 0,
      //   title: const Text(
      //     'RESULT',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Container(
        color: Colors.black87.withOpacity(0.2),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
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
                    height: 25,
                  ),


                  
                  
//                   GestureDetector(
// onTap: () {
//           Navigator.pop(context,
//               MaterialPageRoute(builder: (context) => Bmi_Screen()));
//         },                    child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: isMale ? meColor : FeColor,
//                       ),
//                       width: MediaQuery.of(context).size.width / 2,
//                       child: const Center(
//                         child: Text(
//                           'Anther BMI',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
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
