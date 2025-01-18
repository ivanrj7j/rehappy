import 'package:flutter/material.dart';
class Options extends StatelessWidget {
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
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 33,
                    height: 33,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/33x33"),
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
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                  child: Container(
                    width: 33,
                    height: 33,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/33x33"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 102,
                top: 50,
                child: Container(
                  width: 207,
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 210,
                        child: Text(
                          'Community',
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
                        left: 28,
                        top: 275,
                        child: Text(
                          'Number of Members',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFA6A9AD),
                            fontSize: 16,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4,
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
                top: 375,
                child: Container(
                  width: 417,
                  height: 86,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 41,
                        child: Container(
                          width: 417,
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
                                  'Enter description about the community',
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
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 231,
                          height: 51,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Community Description ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Kdam Thmor Pro',
                                  fontWeight: FontWeight.w400,
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
                left: 10,
                top: 626,
                child: Container(
                  width: 590,
                  height: 199,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 130.85,
                        child: Container(
                          width: 590,
                          height: 68.15,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
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
                                          'Member 11',
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
                                          'Member 12',
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
                                          'Member 13',
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
                                          'Member 14',
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
                                          'Member 15',
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
                                          'Member 16',
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
                                          'Member 17',
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
                                          'Member 18',
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
                                          'Member 19',
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
                                          'Member 20',
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
                        top: 35.85,
                        child: Container(
                          width: 590,
                          height: 68.15,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
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
                        top: 0,
                        child: Text(
                          'No: Members',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
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
                top: 486,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 35.85,
                      child: Container(
                        width: 590,
                        height: 68.15,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
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
                      top: 0,
                      child: Text(
                        'No: Admins',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Kdam Thmor Pro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}