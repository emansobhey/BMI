import 'package:bmi/views/BMI_SCREEN.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delayed navigation function
    void navigateToNextPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bmi_Screen()),
      );
    }

    // Delay duration in seconds
    const int delaySeconds = 5;

    // Schedule navigation after delay
    Future.delayed(Duration(seconds: delaySeconds), navigateToNextPage);

    return Scaffold(
      backgroundColor: Color(0xff00A9F5),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bmi.png'),
            // fit: BoxFit.,
          ),
        ),
      ),
    );
  }
}
