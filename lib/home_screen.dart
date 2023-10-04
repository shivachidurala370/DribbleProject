import 'package:dribbleproject/gas_screen.dart';
import 'package:dribbleproject/safety_screen.dart';
import 'package:dribbleproject/settings.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF20232a),
          body: Stack(
            children: [
              Container(
                height: 820,
                child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 14, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.menu,
                                  color: Color(0xFFcccdcf),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Volvo XC40",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFe8e9ea)),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Parked",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF727478)),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.notifications_none,
                                  color: Color(0xFFe1e3e4),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/volvo.png"),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2a2d34),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "FUEL RANGE",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF787b80)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "96",
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFf5f5f6))),
                                        TextSpan(
                                            text: "ml",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF87888a)))
                                      ])),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Color(0xFF3e4246),
                                                width: 5)),
                                        child: Text(
                                          "25%",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFFa3a6a9)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.all(12),
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2a2d34),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "OIL RANGE",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF787b80)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "4500",
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFf5f5f6))),
                                        TextSpan(
                                            text: "ml",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF87888a)))
                                      ])),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Color(0xFF3e4246),
                                                width: 5)),
                                        child: Text(
                                          "80%",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFFa3a6a9)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2a2d34),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(),
                                      Text(
                                        "REMOTE CONTROL",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF898c91)),
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        color: Color(0xFFf8fafb),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 74,
                                        width: 74,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF3e4146)),
                                        child: Icon(
                                          Icons.power_settings_new,
                                          color: Color(0xFFd5d6d9),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 74,
                                        width: 74,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF3e4146)),
                                        child: Icon(
                                          Icons.highlight,
                                          color: Color(0xFFd5d6d9),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 74,
                                        width: 74,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF3e4146)),
                                        child: Icon(
                                          Icons.lock,
                                          color: Color(0xFFd5d6d9),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 74,
                                        width: 74,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF3e4146)),
                                        child: Icon(
                                          Icons.speaker_phone,
                                          color: Color(0xFFd5d6d9),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2a2d34),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "LOCATION",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF787b80)),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: Color(0xFF4cc287),
                                        size: 60,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.all(12),
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2a2d34),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "CLIMATE",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF787b80)),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "75",
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFf5f5f6))),
                                        TextSpan(
                                            text: "c",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF87888a)))
                                      ])),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xFF3e4146)),
                                            child: Icon(
                                              Icons.minimize_sharp,
                                              color: Color(0xFFd5d6d9),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xFF3e4146)),
                                            child: Icon(
                                              Icons.add,
                                              color: Color(0xFFd5d6d9),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Positioned(
                bottom: 20,
                left: 40,
                right: 40,
                child: Container(
                  height: 80,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Color(0xFF484b52),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.home_filled,
                          color: Color(0xFF1f2229),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Safetyscreen()));
                        },
                        child: Icon(
                          Icons.safety_check_outlined,
                          color: Color(0xFF989a9a),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gasscreen()));
                        },
                        child: Icon(
                          Icons.local_gas_station,
                          color: Color(0xFF989a9a),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings()));
                        },
                        child: Icon(
                          Icons.settings,
                          color: Color(0xFF989a9a),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

// Positioned(
// bottom: 0,
// right: 20,
// left: 20,
// child: Container(
// height: 80,
// width: 260,
// color: Colors.white,
// ),
// ),
