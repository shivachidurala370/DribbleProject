import 'package:dribbleproject/gas_screen.dart';
import 'package:flutter/material.dart';

class Servicescreen extends StatefulWidget {
  const Servicescreen({super.key});

  @override
  State<Servicescreen> createState() => _ServicescreenState();
}

class _ServicescreenState extends State<Servicescreen> {
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
                  padding: EdgeInsets.only(left: 26),
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF2a2d34),
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gasscreen()));
                        },
                        child: Text(
                          "Gas",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFd3d4d5)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFF20232a),
                          borderRadius: BorderRadius.circular(14),
                        ),
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
            top: 200,
            right: 60,
            child: Icon(
              Icons.location_on_rounded,
              color: Color(0xFFfefefe),
              size: 60,
            ),
          ),
          Positioned(
            top: 360,
            left: 50,
            child: Icon(
              Icons.location_on_rounded,
              color: Color(0xFF469cef),
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
            top: 520,
            right: 10,
            left: 10,
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFF2a2d34),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14,
                      left: 14,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sunoco Gas Station",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFf9fafb)),
                        ),
                        Text(
                          "5823 Coldwater Rd, Fort Wayne",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7a7f85)),
                        ),
                        Text(
                          "2.5 ml . 4 m",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7a7f85)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8, top: 6, bottom: 6),
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xFFffffff),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF090909),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 634,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF2a2d34),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "REGULAR",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6b6e74)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFf8f9fb))),
                        TextSpan(
                            text: "3.10",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFf8f9fb)))
                      ]))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF2a2d34),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "MIDGRADE",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6b6e74)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFf8f9fb))),
                        TextSpan(
                            text: "3.60",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFf8f9fb)))
                      ]))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF2a2d34),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "PREMIUM",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6b6e74)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFf8f9fb))),
                        TextSpan(
                            text: "4.10",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFf8f9fb)))
                      ]))
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  height: 100,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF2a2d34),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "DIESEL",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6b6e74)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\$",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFFf8f9fb))),
                        TextSpan(
                            text: "3.60",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFf8f9fb)))
                      ]))
                    ],
                  ),
                ),
              ],
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
                  Icon(
                    Icons.home_filled,
                    color: Color(0xFF989a9a),
                  ),
                  Icon(
                    Icons.safety_check_outlined,
                    color: Color(0xFF989a9a),
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
                  Icon(
                    Icons.settings,
                    color: Color(0xFF989a9a),
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
