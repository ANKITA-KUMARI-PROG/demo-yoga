import 'package:classico/Screen/appointments.dart';
import 'package:classico/Screen/health.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assenment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,

        primaryColor: Colors.blue, // Define the primary color here
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: Colors.black,
        ),
      ),
      home: Assesment(),
    );
  }
}

class Assesment extends StatefulWidget {
  @override
  State<Assesment> createState() => _AssesmentState();
}

class _AssesmentState extends State<Assesment>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        if (_tabController.index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Assesment()),
          );
        } else if (_tabController.index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Appointments()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Jane",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.account_box,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // TabBar added at the top of the body
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "My Assessments ",
                ),
                Tab(text: "My Appointments"),
              ],
              labelColor: Colors.black,
              indicatorColor: Colors.black,
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // First Tab content with Scrollbar and ListView
                  Scrollbar(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            // column make first for image
                            children: [
                              Center(
                                child: Stack(
                                  // stack for background
                                  children: [
                                    Container(
                                      // container for background color

                                      height: screenHeight * 0.6,
                                      width: screenWidth * 0.96,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            255, 199, 227, 241),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height:
                                                          screenHeight * 0.2,
                                                      width: screenWidth * 0.4,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: const Color
                                                              .fromARGB(255,
                                                              244, 152, 182)),
                                                      child: Image.asset(
                                                        "image1.png",
                                                        width:
                                                            screenWidth * 0.3,
                                                        height:
                                                            screenHeight * 0.2,
                                                      ),

                                                      /// image one completed
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height:
                                                            screenHeight * 0.2,
                                                        width:
                                                            screenWidth * 0.5,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Center(
                                                          child: Text.rich(
                                                            TextSpan(
                                                              text:
                                                                  'Fitness Assessment',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:
                                                                      '\nGet started on your fitness\n goals with our physical\n assessment and vital scan',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                      IconButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const Health()));
                                                          },
                                                          icon: const Icon(Icons
                                                              .play_circle_fill_rounded)),
                                                      const Text(
                                                        "Start",
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Column(children: [
                                                  Container(
                                                    height: screenHeight * 0.2,
                                                    width: screenWidth * 0.4,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.greenAccent,
                                                    ),
                                                    child: Image.asset(
                                                      "image2.png",
                                                      width: screenWidth * 0.3,
                                                      height:
                                                          screenHeight * 0.2,
                                                    ),
                                                  ),
                                                ]),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height:
                                                            screenHeight * 0.2,
                                                        width:
                                                            screenWidth * 0.5,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: const Center(
                                                          child: Text.rich(
                                                            TextSpan(
                                                              text:
                                                                  'Health Risk Assesment',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                              children: <InlineSpan>[
                                                                TextSpan(
                                                                  text:
                                                                      '\ndentify and mitigate\n health risks with precise\n, proactive assessments ',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                      IconButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const Health()));
                                                          },
                                                          icon: const Column(
                                                            children: [
                                                              Icon(Icons
                                                                  .play_circle_fill_rounded),
                                                            ],
                                                          )),
                                                      const Text(
                                                        "Start",
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Center(
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors
                                                  .black, // Black background color
                                              foregroundColor: Colors
                                                  .white, // White text color
                                            ),
                                            iconAlignment: IconAlignment.end,
                                            child: const Text("view all"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: screenHeight * 0.05,
                                    width: screenWidth * 0.92,
                                    color: Colors.white,
                                    child: const Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('Challenges'),
                                            Text("View all")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(Icons.arrow_circle_right_outlined),
                                ],
                              ),
                              Container(
                                height: screenHeight * 0.3,
                                width: screenWidth * 0.98,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Today's Challenge! ",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                              ],
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Push Up 20x",
                                                selectionColor: Color.fromARGB(
                                                    255, 54, 111, 56),
                                              ),
                                            ),
                                            Image.asset(
                                              "image4.png",
                                              height: screenHeight * 0.1,
                                              width: screenWidth * 0.2,
                                            ),
                                            const Text(
                                              "10/20 Complete",
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Icon(Icons
                                                        .play_circle_fill_outlined)),
                                                const Text(
                                                  "Continue",
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          "image5.png",
                                          height: screenHeight * 0.24,
                                          width: screenWidth * 0.55,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: screenHeight * 0.05,
                                    width: screenWidth * 0.92,
                                    color: Colors.white,
                                    child: const Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text("Workout Routines"),
                                            Text("View all"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(Icons.arrow_circle_right_outlined),
                                ],
                              ),
                              Container(
                                height: screenHeight * 0.2,
                                width: screenWidth * 0.98,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "image6.png",
                                          height: screenHeight * 0.2,
                                          width: screenWidth * 0.3,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.4,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          const Text("Sweat Starter"),
                                          const Text("Full Body"),
                                          TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Lose Weight",
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              )),
                                          const Text("Difficulty : Medium "),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          child: Image.asset(
                                            "image7.png",
                                            height: screenHeight * 0.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
