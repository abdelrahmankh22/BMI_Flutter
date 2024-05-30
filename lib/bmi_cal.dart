import 'dart:math';

import 'package:bim/re_bmi.dart';
import 'package:flutter/material.dart';

class BMI_Cal extends StatefulWidget {
  const BMI_Cal({super.key});

  @override
  State<BMI_Cal> createState() => _BMI_CalState();
}

class _BMI_CalState extends State<BMI_Cal> {
  bool Ismale = true;
  double H = 170;
  int age = 17;
  int wi = 57;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1d1b20),
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffdafd86),
                  borderRadius: BorderRadius.circular(15.0)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.hourglass_full,
                  color: Color(0xff1d1b20),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            const Text("BMI Calculator"),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
      ),
      backgroundColor: const Color(0xff1d1b20),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Ismale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:
                                Ismale ? const Color(0xff3c3f36) : const Color(0xff2b2b2b)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70,
                              color: Color(0xffdafd87),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Ismale = false;
                        });
                      },
                      child: Container(
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                              color: Color(0xffdafd87),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:
                                Ismale ? const Color(0xff2b2b2b) : const Color(0xff3c3f36)),
                      ),
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
                  color: const Color(0xff2b2b2b),
                  borderRadius: BorderRadius.circular((10.0)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "HEIGHT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 255.0),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xffdafd87),
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Center(child: Text("Cm")),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Center(
                      child: Text(
                        "${H.round()}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                      value: H,
                      max: 240.0,
                      min: 120.0,
                      activeColor: const Color(0xff363936),
                      inactiveColor: const Color(0xff1d1b20),
                      thumbColor: const Color(0xffdafd87),
                      onChanged: (v) {
                        setState(() {
                          H = v;
                        });
                      },
                    )
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2b2b2b)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Weight",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            wi--;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                        ),
                                        mini: true,
                                        backgroundColor: const Color(0xffdafd87),
                                        //
                                        foregroundColor: Colors.black,
                                        elevation: 0.0,
                                        heroTag: "w-",
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color(0xffdafd87)),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "$wi",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            wi++;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add,
                                        ),
                                        mini: true,
                                        backgroundColor: const Color(0xffdafd87),
                                        //
                                        foregroundColor: Colors.black,
                                        elevation: 0.0,
                                        heroTag: "w+",
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color(0xffdafd87)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              "Kg",
                              style: TextStyle(
                                  color: Color(0xff878787), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff2b2b2b)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Age",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.remove,
                                        ),
                                        mini: true,
                                        backgroundColor: const Color(0xffdafd87),
                                        //
                                        foregroundColor: Colors.black,
                                        elevation: 0.0,
                                        heroTag: "a-",
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color(0xffdafd87)),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "$age",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 45.0,
                                      child: FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        child: const Icon(
                                          Icons.add,
                                        ),
                                        mini: true,
                                        backgroundColor: const Color(0xffdafd87),
                                        //
                                        foregroundColor: Colors.black,
                                        elevation: 0.0,
                                        heroTag: "a+",
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color(0xffdafd87)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              "Year",
                              style: TextStyle(
                                  color: Color(0xff878787), fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                double re = wi / pow(H / 100, 2);

                print(re.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReBmi(
                        g: re,
                      ),
                    ));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffdafd87),
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            double re = wi / pow(H / 100, 2);

                            print(re.round());
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReBmi(
                                    g: re,
                                  ),
                                ));
                          },
                          child: const Text(
                            "Calculate",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
