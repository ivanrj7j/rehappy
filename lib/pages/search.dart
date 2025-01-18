import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 917,
          padding: const EdgeInsets.only(bottom: 398),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF191919), Color(0xFF242424)],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 418,
                height: 94,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 418,
                        height: 94,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF191919), Color(0xFF1A1A1A)],
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF424549)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 83,
                      top: 46,
                      child: Container(
                        width: 312,
                        height: 32,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 1,
                              child: Container(
                                width: 31,
                                height: 31,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/31x31"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 36,
                              top: 0,
                              child: Container(
                                width: 276,
                                height: 31,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 276,
                                      child: Text(
                                        'Search',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Kdam Thmor Pro',
                                          fontWeight: FontWeight.w400,
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
                      left: 60,
                      top: 79,
                      child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/32x32"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 416,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 303,
                      child: Container(
                        width: 412,
                        height: 113,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 23,
                              child: Container(
                                width: 412,
                                height: 90,
                                padding: const EdgeInsets.only(top: 10.85, left: 10, bottom: 5),
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
                                                'Community 1',
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
                                                'Community 2',
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
                                                'Community 3',
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
                                                'Community 4',
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
                                                'Community 5',
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
                                                'Community 6',
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
                                                'Community 7',
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
                                                'Community 8',
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
                                                'Community 9',
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
                                                'Community 10',
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
                              child: Text(
                                'Popular',
                                textAlign: TextAlign.center,
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
                      top: 140,
                      child: Container(
                        width: 412,
                        height: 113,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 23,
                              child: Container(
                                width: 412,
                                height: 90,
                                padding: const EdgeInsets.only(top: 10.85, left: 10, bottom: 5),
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
                                                'Community 1',
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
                                                'Community 2',
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
                                                'Community 3',
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
                                                'Community 4',
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
                                                'Community 5',
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
                                                'Community 6',
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
                                                'Community 7',
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
                                                'Community 8',
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
                                                'Community 9',
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
                                                'Community 10',
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
                              child: Text(
                                'Last Visited',
                                textAlign: TextAlign.center,
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
                        width: 412,
                        height: 90,
                        padding: const EdgeInsets.only(top: 10.85, left: 10, bottom: 5),
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
                                        'Community 1',
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
                                        'Community 2',
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
                                        'Community 3',
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
                                        'Community 4',
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
                                        'Community 5',
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
                                        'Community 6',
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
                                        'Community 7',
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
                                        'Community 8',
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
                                        'Community 9',
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
                                        'Community 10',
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