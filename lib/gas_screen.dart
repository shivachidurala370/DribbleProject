import 'package:dribbleproject/home_screen.dart';
import 'package:dribbleproject/safety_screen.dart';
import 'package:dribbleproject/service_screen.dart';
import 'package:dribbleproject/settings.dart';
import 'package:flutter/material.dart';

class Gasscreen extends StatefulWidget {
  const Gasscreen({super.key});

  @override
  State<Gasscreen> createState() => _GasscreenState();
}

class _GasscreenState extends State<Gasscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF20232a),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/map.jpg"),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Color(0xFF2f333c), BlendMode.color))),
          ),
          Positioned(
            top: 60,
            left: 12,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 26),
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF2a2d34),
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFF20232a),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          "Gas",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFd3d4d5)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Servicescreen()));
                        },
                        child: Text(
                          "Service",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFd3d4d5)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF2a2d34),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    Icons.menu,
                    color: Color(0xFFe3e4e5),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 220,
            right: 60,
            child: Icon(
              Icons.location_on_rounded,
              color: Color(0xFFfb5d58),
              size: 60,
            ),
          ),
          Positioned(
            top: 340,
            left: 50,
            child: Icon(
              Icons.location_on_rounded,
              color: Color(0xFF469cef),
              size: 60,
            ),
          ),
          Positioned(
            top: 580,
            right: 60,
            child: Icon(
              Icons.location_on_rounded,
              color: Color(0xFFfab03c),
              size: 60,
            ),
          ),
          Positioned(
            top: 400,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF2a2d34)),
              child: Icon(
                Icons.search,
                color: Color(0xFFebedee),
              ),
            ),
          ),
          Positioned(
            top: 460,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF2a2d34)),
              child: Icon(
                Icons.gps_fixed_outlined,
                color: Color(0xFFebedee),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 40,
            child: Container(
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
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFffffff),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.local_gas_station,
                      color: Color(0xFF1f2229),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Settings()));
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
      ),
    );
  }
}
