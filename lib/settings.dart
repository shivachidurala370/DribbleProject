import 'package:dribbleproject/gas_screen.dart';
import 'package:dribbleproject/safety_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List<String> text = ["SERVICE", "LOG", "MANUAL", "SUPPORT"];
List<IconData> icons = [
  Icons.car_crash,
  Icons.explore,
  Icons.menu_book_outlined,
  Icons.fire_truck
];
List<Color> colors = [
  Color(0xFF4b9eea),
  Color(0xFFfc5d5d),
  Color(0xFFfaad40),
  Color(0xFF44ef95)
];

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20232a),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 14, right: 20),
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
                        "Diagnostic",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFe8e9ea)),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Volvo XC40",
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "AVG SPEED",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5f6269)),
                      ),
                      Text(
                        "25 mph",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFededee)),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "DISTANCE",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5f6269)),
                      ),
                      Text(
                        "31,000 ml",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFededee)),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "CONSUMPTION",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5f6269)),
                      ),
                      Text(
                        "28 MPG",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFededee)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              height: 400,
              child: GridView.builder(
                  itemCount: text.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF2a2d34),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 16,
                            child: Text(
                              text[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6f7278)),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: Icon(
                              icons[index],
                              color: colors[index],
                              size: 60,
                            ),
                          ),
                          Positioned(
                            bottom: 6,
                            right: 8,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF3f4249)),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color(0xFFadb1b4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                color: Color(0xFF484b52),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homescreen()));
                    },
                    child: Icon(
                      Icons.home_filled,
                      color: Color(0xFF989a9a),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gasscreen()));
                    },
                    child: Icon(
                      Icons.local_gas_station,
                      color: Color(0xFF989a9a),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFffffff),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Color(0xFF1f2229),
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
