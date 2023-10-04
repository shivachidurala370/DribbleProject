import 'package:dribbleproject/camera_screen.dart';
import 'package:dribbleproject/gas_screen.dart';
import 'package:dribbleproject/home_screen.dart';
import 'package:dribbleproject/settings.dart';
import 'package:flutter/material.dart';

class Safetyscreen extends StatefulWidget {
  const Safetyscreen({super.key});

  @override
  State<Safetyscreen> createState() => _SafetyscreenState();
}

class _SafetyscreenState extends State<Safetyscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF20232a),
        body: Column(
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
                        "Safety",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFe8e9ea)),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Open",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF727478)),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Color(0xFFe1e3e4),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 112,
                    decoration: BoxDecoration(
                        color: Color(0xFFffffff),
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      "Doors",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF4b4b4b)),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 112,
                    decoration: BoxDecoration(
                        color: Color(0xFF34373e),
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      "Tires",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF6c6f75)),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Camerascreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 112,
                      decoration: BoxDecoration(
                          color: Color(0xFF34373e),
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        "Camera",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6c6f75)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 520,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/cartopview.png",
                    color: Color(0xFF34373c),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF46eb9a),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    left: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF46eb9a),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 160,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF46eb9a),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 160,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFFdb565a),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 430,
                    left: 160,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF46eb9a),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    right: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF46eb9a),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 300,
                    right: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF3d4047),
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF46eb9a),
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
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
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFffffff)),
                    child: Icon(
                      Icons.safety_check_outlined,
                      color: Color(0xFF161920),
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
          ],
        ),
      ),
    );
  }
}
