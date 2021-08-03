import 'package:demo_flutter/app_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  var vv = [
    WorkoutDetails(
      day: "10",
      workoutdetails: "Shoulders",
      workoutdetailsAmount: "12 Exercises",
    ),
    WorkoutDetails(
      day: "14",
      workoutdetails: "Strectching",
      workoutdetailsAmount: "10 Exercises",
    ),
    WorkoutDetails(
      day: "17",
      workoutdetails: "Chest and legs",
      workoutdetailsAmount: "8 Exercises",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: pageMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: calculatefontSize(20)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/dp.jpeg"),
                    ),
                    appText("Hello Solz", 17, leftmargin: 30.0),
                    Spacer(),
                    GestureDetector(
                      onTap: showPopUp,
                      child: Container(
                        height: calculatefontSize(60),
                        width: calculatefontSize(60),
                        child: Icon(Icons.fireplace_sharp),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius:
                              BorderRadius.circular(calculatefontSize(15)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: calculatefontSize(50)),
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        Container(
                          child: TabBar(
                            isScrollable: false,
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: Colors.blueGrey,
                            unselectedLabelColor: Colors.blueGrey,
                            tabs: [
                              Tab(
                                child: appText("Stats", 40,
                                    weight: FontWeight.bold,
                                    align: TextAlign.end),
                                //text: "stats",
                              ),
                              Tab(
                                  child: appText(
                                "Muscles",
                                40,
                              ) //weight: FontWeight.bold),
                                  //text: "stats",
                                  ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: TabBarView(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      appText("58", 40,
                                          weight: FontWeight.bold,
                                          topmargin: 50.0),
                                      appText("Workout Comoleted", 20,
                                          color: Colors.grey, topmargin: 20.0),
                                      Container(
                                        height: calculatefontSize(120),
                                        margin: EdgeInsets.only(
                                            top: calculatefontSize(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                          text: "72.4",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  calculatefontSize(
                                                                      30),
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold),
                                                          children: [
                                                            TextSpan(
                                                                text: "kg",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        calculatefontSize(
                                                                            20)))
                                                          ]),
                                                    ),
                                                    appText(
                                                        "current weight", 20,
                                                        color: Colors.grey,
                                                        topmargin: 10.0)
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: VerticalDivider(
                                                  color: Color(0xff707070),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        text: "7.6",
                                                        style: TextStyle(
                                                            fontSize:
                                                                calculatefontSize(
                                                                    30),
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        children: [
                                                          TextSpan(
                                                            text: "kg",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  calculatefontSize(
                                                                      20),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top:
                                                              calculatefontSize(
                                                                  10)),
                                                      child: GFProgressBar(
                                                        percentage: 0.7,
                                                        progressBarColor:
                                                            Colors.orange,
                                                      ),
                                                    ),
                                                    appText(
                                                      "left to gain",
                                                      20,
                                                      color: Colors.grey,
                                                      topmargin: 10.0,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: calculatefontSize(40)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: calculatefontSize(
                                                          10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Icon(
                                                      Icons.speed,
                                                      color: Color(0xfff4660a),
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xfff2e5e3)),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: "12.6k",
                                                    style: TextStyle(
                                                        fontSize:
                                                            calculatefontSize(
                                                                20),
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: [
                                                      TextSpan(
                                                        text: "cal",
                                                        style: TextStyle(
                                                          fontSize:
                                                              calculatefontSize(
                                                                  15),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                appText("Burned", 15,
                                                    color: Colors.grey,
                                                    topmargin: 10.0)
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: calculatefontSize(
                                                          10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Icon(
                                                      Icons.line_weight_sharp,
                                                      color: Color(0xff5634fd),
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffefecff)),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: "270k",
                                                    style: TextStyle(
                                                        fontSize:
                                                            calculatefontSize(
                                                                20),
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: [
                                                      TextSpan(
                                                        text: "kg",
                                                        style: TextStyle(
                                                          fontSize:
                                                              calculatefontSize(
                                                                  15),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                appText("Lifted", 15,
                                                    color: Colors.grey,
                                                    topmargin: 10.0)
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: calculatefontSize(
                                                          10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Icon(
                                                      Icons.timeline,
                                                      color: Color(0xff02affd),
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffecf9ff)),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    text: "13",
                                                    style: TextStyle(
                                                        fontSize:
                                                            calculatefontSize(
                                                                20),
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    children: [
                                                      TextSpan(
                                                        text: "weeks",
                                                        style: TextStyle(
                                                          fontSize:
                                                              calculatefontSize(
                                                                  15),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                appText("Training", 15,
                                                    color: Colors.grey,
                                                    topmargin: 10.0)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: calculatefontSize(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: calculatefontSize(100),
                                              width: calculatefontSize(70),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  appText(
                                                    "AUG",
                                                    30,
                                                    color: Color(0xffb0e4ff),
                                                  ),
                                                  appText(
                                                    "17",
                                                    30,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(0xff03b2f6),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        calculatefontSize(20)),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        right:
                                                            calculatefontSize(
                                                                5),
                                                      ),
                                                      width:
                                                          calculatefontSize(50),
                                                      height:
                                                          calculatefontSize(5),
                                                      color: Colors.orange,
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        right:
                                                            calculatefontSize(
                                                                5),
                                                      ),
                                                      width:
                                                          calculatefontSize(50),
                                                      height:
                                                          calculatefontSize(5),
                                                      color: Colors.blueAccent,
                                                    ),
                                                    Container(
                                                      width:
                                                          calculatefontSize(50),
                                                      height:
                                                          calculatefontSize(5),
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ],
                                                ),
                                                appText(
                                                    "Recent: Chest and Legs",
                                                    20,
                                                    weight: FontWeight.bold,
                                                    topmargin: 5.0,
                                                    bottommargin: 5.0),
                                                appText(
                                                  "8 Exercises",
                                                  15,
                                                  color: Colors.grey,
                                                  //weight: FontWeight.bold,
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: calculatefontSize(100),
                                              width: calculatefontSize(70),
                                              decoration: BoxDecoration(
                                                color: Color(0xfff5f4f7),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        calculatefontSize(20)),
                                              ),
                                              child:
                                                  Icon(Icons.arrow_forward_ios),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Lottie.asset(
                                      'assets/images/squat.json',
                                      repeat: true,
                                      reverse: false,
                                      animate: true,
                                      width: calculatefontSize(200),
                                      height: calculatefontSize(200),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showPopUp() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: WillPopScope(
                onWillPop: () async => false,
                child: Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                  child: StatefulBuilder(
                    builder: (BuildContext ctx, setState) {
                      return Container(
                        margin: pageMargin,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: calculatefontSize(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Icon(
                                      Icons.timeline,
                                      color: Color(0xff02affd),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffecf9ff)),
                                ),
                                appText("New Workout", 20, leftmargin: 30.0),
                              ],
                            ),
                            Row(
                              children: [
                                appText("From Previous", 25),
                                Spacer(),
                                Container(
                                  height: calculatefontSize(70),
                                  width: calculatefontSize(70),
                                  decoration: BoxDecoration(
                                    color: Color(0xfff5f4f7),
                                    borderRadius: BorderRadius.circular(
                                        calculatefontSize(20)),
                                  ),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Container(
                              height: calculatefontSize(150),
                              margin:
                                  EdgeInsets.only(top: calculatefontSize(20)),
                              child: Swiper(
                                itemCount: 3,

                                itemWidth: double.infinity,
                                viewportFraction: 0.8,
                                //itemHeight: calculatefontSize(200),
                                itemBuilder: (ctx, index) {
                                  return vv[index];
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: calculatefontSize(30),
                                  bottom: calculatefontSize(46),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.exit_to_app_sharp),
                                    appText("Close", 20,
                                        color: Colors.grey, leftmargin: 10.0)
                                  ],
                                ), //appText("Cancel", 18, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 200),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  // void showPopUp() {
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (ctx) => WillPopScope(
  //       onWillPop: () async => false,
  //       child: Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10),
  //         ),
  //         elevation: 10,
  //         child: StatefulBuilder(
  //           builder: (BuildContext ctx, setState) {
  //             return Container(
  //               margin: pageMargin,
  //               child: ListView(
  //                 shrinkWrap: true,
  //                 children: [
  //                   Row(
  //                     children: [
  //                       Container(
  //                         margin:
  //                             EdgeInsets.only(bottom: calculatefontSize(10)),
  //                         child: Padding(
  //                           padding: const EdgeInsets.all(16.0),
  //                           child: Icon(
  //                             Icons.timeline,
  //                             color: Color(0xff02affd),
  //                           ),
  //                         ),
  //                         decoration: BoxDecoration(
  //                             shape: BoxShape.circle, color: Color(0xffecf9ff)),
  //                       ),
  //                       appText("New Workout", 20, leftmargin: 30.0),
  //                     ],
  //                   ),
  //                   Row(
  //                     children: [
  //                       appText("From Previous", 25),
  //                       Spacer(),
  //                       Container(
  //                         height: calculatefontSize(70),
  //                         width: calculatefontSize(70),
  //                         decoration: BoxDecoration(
  //                           color: Color(0xfff5f4f7),
  //                           borderRadius:
  //                               BorderRadius.circular(calculatefontSize(20)),
  //                         ),
  //                         child: Icon(Icons.arrow_forward_ios),
  //                       ),
  //                     ],
  //                   ),
  //                   Container(
  //                     height: calculatefontSize(150),
  //                     margin: EdgeInsets.only(top: calculatefontSize(20)),
  //                     child: Swiper(
  //                       itemCount: 3,

  //                       itemWidth: double.infinity,
  //                       viewportFraction: 0.8,
  //                       //itemHeight: calculatefontSize(200),
  //                       itemBuilder: (ctx, index) {
  //                         return vv[index];
  //                       },
  //                     ),
  //                   ),
  //                   GestureDetector(
  //                     onTap: () => Navigator.of(context).pop(),
  //                     child: Container(
  //                       margin: EdgeInsets.only(
  //                         top: calculatefontSize(30),
  //                         bottom: calculatefontSize(46),
  //                       ),
  //                       child: Row(
  //                         children: [
  //                           Icon(Icons.exit_to_app_sharp),
  //                           appText("Close", 20,
  //                               color: Colors.grey, leftmargin: 10.0)
  //                         ],
  //                       ), //appText("Cancel", 18, color: Colors.green),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class WorkoutDetails extends StatelessWidget {
  final day;
  final workoutdetails;
  final workoutdetailsAmount;

  WorkoutDetails({this.day, this.workoutdetails, this.workoutdetailsAmount});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(calculatefontSize(20)),
        border: Border.all(color: Colors.black),
      ),
      margin: EdgeInsets.only(right: calculatefontSize(20)),
      //margin: EdgeInsets.only(top: calculatefontSize(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: calculatefontSize(80),
            width: calculatefontSize(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                appText(
                  "AUG",
                  20,
                  color: Color(0xffb0e4ff),
                ),
                appText(
                  day,
                  20,
                  color: Colors.white,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xff03b2f6),
              borderRadius: BorderRadius.circular(calculatefontSize(20)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: calculatefontSize(5),
                    ),
                    width: calculatefontSize(30),
                    height: calculatefontSize(5),
                    color: Colors.orange,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: calculatefontSize(5),
                    ),
                    width: calculatefontSize(30),
                    height: calculatefontSize(5),
                    color: Colors.blueAccent,
                  ),
                  Container(
                    width: calculatefontSize(30),
                    height: calculatefontSize(5),
                    color: Colors.blueGrey,
                  ),
                ],
              ),
              appText(workoutdetails, 20,
                  weight: FontWeight.bold, topmargin: 5.0, bottommargin: 5.0),
              appText(
                workoutdetailsAmount,
                15,
                color: Colors.grey,
                //weight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
