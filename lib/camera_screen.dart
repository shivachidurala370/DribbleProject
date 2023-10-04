import 'package:dribbleproject/safety_screen.dart';
import 'package:flutter/material.dart';

class Camerascreen extends StatefulWidget {
  const Camerascreen({super.key});

  @override
  State<Camerascreen> createState() => _CamerascreenState();
}

class _CamerascreenState extends State<Camerascreen> {
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
                        "Safety",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFe8e9ea)),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Live",
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Safetyscreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 112,
                      decoration: BoxDecoration(
                          color: Color(0xFF34373e),
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        "Doors",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6c6f75)),
                      ),
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
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 112,
                    decoration: BoxDecoration(
                        color: Color(0xFFffffff),
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      "Camera",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF050505)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/camera.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 86,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFffffff)),
                    child: Text(
                      "Front",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF48494b)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 86,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF2a2d34),
                    ),
                    child: Text(
                      "Back",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFedeeee)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 86,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFF2a2d34)),
                    child: Text(
                      "Left",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFedeeee)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 86,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF2a2d34),
                    ),
                    child: Text(
                      "Right",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFedeeee)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFF2a2d34)),
                    child: Icon(
                      Icons.volume_mute_outlined,
                      color: Color(0xFF3f83c5),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFF2a2d34)),
                    child: Icon(
                      Icons.flashlight_on_outlined,
                      color: Color(0xFFd8a63a),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFF2a2d34)),
                    child: Icon(
                      Icons.mic_none_outlined,
                      color: Color(0xFF43f698),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFF2a2d34)),
                    child: Icon(
                      Icons.fiber_manual_record_rounded,
                      color: Color(0xFFfb5b5d),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
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
                  Icon(
                    Icons.home_filled,
                    color: Color(0xFF989a9a),
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
                  Icon(
                    Icons.local_gas_station,
                    color: Color(0xFF989a9a),
                  ),
                  Icon(
                    Icons.settings,
                    color: Color(0xFF989a9a),
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
