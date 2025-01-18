import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 917,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF191919), Color(0xFF242424)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 55,
                top: 50,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(3.14),
                  child: Container(
                    width: 33,
                    height: 33,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/33x33"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 390,
                top: 50,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(3.14),
                  child: Container(
                    width: 33,
                    height: 33,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/33x33"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 106,
                top: 50,
                child: Container(
                  height: 272,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 46,
                        top: 210,
                        child: Text(
                          'Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 372,
                child: Container(
                  width: 412,
                  height: 76,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 31,
                        child: Container(
                          width: 412,
                          height: 45,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 368,
                                child: Text(
                                  'Enter your bio',
                                  style: TextStyle(
                                    color: Color(0xFFA6A9AD),
                                    fontSize: 16,
                                    fontFamily: 'Kdam Thmor Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 0,
                        child: Text(
                          'Bio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 386,
                        top: 5,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/20x20"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 478,
                child: Container(
                  width: 412,
                  height: 217,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 127,
                        child: Container(
                          width: 412,
                          height: 90,
                          padding: const EdgeInsets.only(
                              top: 10.85, left: 10, bottom: 11),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 1',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 3',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 4',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 5',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 6',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 7',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 8',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 9',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 56.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 10',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 32,
                        child: Container(
                          width: 412,
                          height: 90,
                          padding: const EdgeInsets.only(
                              top: 10.85, left: 10, bottom: 11),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 1',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 2',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 3',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 4',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 5',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 6',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 7',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 8',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 50.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 9',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 50,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 56.15,
                                      child: SizedBox(
                                        width: 50,
                                        child: Text(
                                          'Member 10',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFFFBFCF6),
                                            fontSize: 8,
                                            fontFamily: 'Kdam Thmor Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 0,
                        child: Container(
                          width: 396,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  'communities joined',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Kdam Thmor Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 376,
                                top: 1,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/20x20"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: OvalBorder(),
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
              Positioned(
                left: 256,
                top: 200,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF1B1B1B), Color(0xFF1C1C1C)],
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF424549)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12.50,
                        top: 12.50,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/25x25"),
                              fit: BoxFit.fill,
                            ),
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
      ],
    );
  }
}
