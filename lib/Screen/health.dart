import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  color: Colors.greenAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "thirdp1.png",
                                height: screenHeight * 0.5,
                                width: screenWidth * 0.5,
                              ),
                            ],
                          ),
                          Image.asset(
                            "thirdp4.png",
                            height: screenHeight * 0.4,
                            width: screenWidth * 0.4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What do you get ? ",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Container(
                      height: 99,
                      width: screenWidth * 0.99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "thirdp2.png",
                        height: screenHeight * 0.2,
                        width: screenWidth * 0.3,
                      ),
                    ),
                    const Text(
                      "How we do it?",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  ],
                ),
                Center(
                  child: Image.asset(
                    "thirdp3.png",
                    height: screenHeight * 0.4,
                    width: screenWidth * 0.4,
                  ),
                ),
                Image.asset(
                  "thirdp6.png",
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.9,
                ),
              ],
            );
          }),
    );
  }
}
