import 'package:flutter/material.dart';

class ReBmi extends StatefulWidget {
  @override
  State<ReBmi> createState() => _ReBmiState();

  ReBmi({super.key, required this.g});

  late final double g;
}

class _ReBmiState extends State<ReBmi> {
  String getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'UnderWeight';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Normal';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    } else if (bmi >= 30 && bmi <= 34.9) {
      return 'Obesity class I';
    } else if (bmi >= 35 && bmi <= 39.9) {
      return 'Obesity class II';
    } else {
      return ' Extreme Obesity  ';
    }
  }

  String Tips(double bmi) {
    if (bmi < 18.5) {
      return "Tips:\n \nIncrease Caloric Intake: Consume calorie-dense foods, including healthy fats like avocados, nuts, and plant oils.\n"
          "\nProtein Intake: Increase protein consumption to help build muscle mass. Good sources include chicken, fish, eggs, and dairy products.\n";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return " Tips:\n \nMaintain a Balanced Diet: Continue eating \na variety of foods that provide all necessary nutrients.\n"
          "\nRegular Exercise: Aim for a mix of aerobic exercises, strength training, and flexibility exercises ";
    } else if (bmi >= 25 && bmi <= 29.9) {
      return "Tips:\n\nHealthy Eating: Focus on a balanced diet with plenty of fruits, vegetables, lean proteins, and whole grains.\n"
          "\nPhysical Activity: Engage in at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity per week, along with muscle-strengthening exercises.";
    } else if (bmi >= 30 && bmi <= 34.9) {
      return "Tips:\n\nStructured Weight Loss Plan: Consider a structured weight loss plan with guidance from a healthcare professional.\n"
          "\nDiet Modifications: Reduce calorie intake, focusing on nutrient-rich foods.";
    } else if (bmi >= 35 && bmi <= 39.9) {
      return "Tips:\n\nProfessional Guidance: Work closely with healthcare providers, including dietitians and possibly psychologists, for a comprehensive approach.\n"
          "\nTailored Exercise Program: Develop a personalized exercise plan that accounts for any physical limitations.";
    } else {
      return "Tips:\n\nIntensive Medical Supervision: Regular check-ups with healthcare professionals to monitor health conditions and progress.\n"
          "\nComprehensive Weight Loss Program: Engage in a comprehensive weight loss program that includes diet, exercise, behavioral therapy, and possibly medical treatments.";
    }
  }

  @override
  Widget build(BuildContext context) {
    String bmiCategory = getBmiCategory(widget.g);
    String tips = Tips(widget.g);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1d1b20),
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffdafd86),
                  borderRadius: BorderRadius.circular(15.0)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.hourglass_full,
                  color: Color(0xff1d1b20),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Text("BMI Calculator"),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      backgroundColor: Color(0xff1d1b20),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Result",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff2b2b2b),
                borderRadius: BorderRadius.circular((10.0)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Your BMI is",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          bmiCategory,
                          style: TextStyle(
                              color: Color(0xffdafd86),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    "${widget.g.toStringAsFixed(1)}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  )),
                  Slider(
                    value: widget.g,
                    max: 100,
                    min: 0,
                    activeColor: Color(0xff363936),
                    inactiveColor: Color(0xff1d1b20),
                    thumbColor: Color(0xffdafd87),
                    onChanged: (v) {
                      setState(() {
                        widget.g = v;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              tips,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffdafd87),
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "RE-Calculate",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_back_ios)
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
