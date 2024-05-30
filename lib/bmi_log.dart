import 'package:bim/bmi_cal.dart';
import 'package:flutter/material.dart';

class Bmi_log extends StatefulWidget {
  const Bmi_log({super.key});

  @override
  State<Bmi_log> createState() => _Bmi_logState();
}

class _Bmi_logState extends State<Bmi_log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1b20),
      appBar: AppBar(
        backgroundColor: Color(0xff1d1b20),
        title: Text("BMI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 200),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Color(0xffdafd86),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.hourglass_full,
                        size: 60.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Text(
                "BMI Calculator",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffdafd86),
                    borderRadius: BorderRadius.circular((20.0))),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BMI_Cal(),
                            ));
                      });
                    },
                    child: Text(
                      "START",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
