import 'package:flutter/material.dart';
class Chat extends StatelessWidget {
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
                left: 0,
                top: 132,
                child: Container(
                  width: 412,
                  height: 443,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 0,
                        child: Container(
                          width: 401,
                          height: 79,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 10,
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
                                left: 129,
                                top: 7,
                                child: Container(
                                  width: 125,
                                  height: 42,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Da/t/e ti:me PM',
                                        style: TextStyle(
                                          color: Color(0xFFFBFCF6),
                                          fontSize: 14,
                                          fontFamily: 'Kdam Thmor Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                top: 0,
                                child: Container(
                                  width: 89,
                                  height: 51,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name 1',
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
                              Positioned(
                                left: 50,
                                top: 31,
                                child: Container(
                                  width: 351,
                                  height: 48,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 330,
                                        child: Text(
                                          'Chat 1',
                                          style: TextStyle(
                                            color: Color(0xFFA6A9AD),
                                            fontSize: 18,
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
                        left: 10,
                        top: 84,
                        child: Container(
                          width: 401,
                          height: 110,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 41,
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
                                left: 50,
                                top: 31,
                                child: Container(
                                  width: 90,
                                  height: 51,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name 2',
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
                              Positioned(
                                left: 50,
                                top: 62,
                                child: Container(
                                  width: 351,
                                  height: 48,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 330,
                                        child: Text(
                                          'Chat 1',
                                          style: TextStyle(
                                            color: Color(0xFFA6A9AD),
                                            fontSize: 18,
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
                                left: 130,
                                top: 38,
                                child: Container(
                                  width: 125,
                                  height: 42,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Da/t/e ti:me PM',
                                        style: TextStyle(
                                          color: Color(0xFFFBFCF6),
                                          fontSize: 14,
                                          fontFamily: 'Kdam Thmor Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                top: 21,
                                child: Container(
                                  width: 30,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                                    border: Border.only(
                                      left: BorderSide(width: 2, color: Color(0xFF464649)),
                                      top: BorderSide(width: 2, color: Color(0xFF464649)),
                                      right: BorderSide(color: Color(0xFF464649)),
                                      bottom: BorderSide(color: Color(0xFF464649)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                top: 0,
                                child: Container(
                                  width: 80,
                                  height: 42,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '@Name 1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Kdam Thmor Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 120,
                                top: 0,
                                child: Container(
                                  width: 60,
                                  height: 42,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Chat 1',
                                        style: TextStyle(
                                          color: Color(0xFFA6A9AD),
                                          fontSize: 14,
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
                        left: 0,
                        top: 196.50,
                        child: Container(
                          width: 412,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 12.50,
                                child: Container(
                                  width: 412,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF424549),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 162,
                                top: 0,
                                child: Container(
                                  width: 89,
                                  height: 25,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(color: Color(0xFF1D1D1D)),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Month Date, Year',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
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
                        top: 224,
                        child: Container(
                          width: 401,
                          height: 107,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 10,
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
                                left: 130,
                                top: 7,
                                child: Container(
                                  width: 125,
                                  height: 42,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Da/t/e ti:me PM',
                                        style: TextStyle(
                                          color: Color(0xFFFBFCF6),
                                          fontSize: 14,
                                          fontFamily: 'Kdam Thmor Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                top: 0,
                                child: Container(
                                  width: 90,
                                  height: 51,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name 3',
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
                              Positioned(
                                left: 50,
                                top: 31,
                                child: Container(
                                  width: 351,
                                  height: 76,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 330,
                                        child: Text(
                                          'Chat 3\nNew line',
                                          style: TextStyle(
                                            color: Color(0xFFA6A9AD),
                                            fontSize: 18,
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
                        left: 10,
                        top: 336,
                        child: Container(
                          width: 401,
                          height: 107,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 10,
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
                                left: 50,
                                top: 0,
                                child: Container(
                                  width: 73,
                                  height: 51,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name',
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
                              Positioned(
                                left: 113,
                                top: 9,
                                child: Container(
                                  width: 109,
                                  height: 42,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Date ti:me pm',
                                        style: TextStyle(
                                          color: Color(0xFFFBFCF6),
                                          fontSize: 14,
                                          fontFamily: 'Kdam Thmor Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                top: 31,
                                child: Container(
                                  width: 351,
                                  height: 48,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 330,
                                        child: Text(
                                          'Chat 4',
                                          style: TextStyle(
                                            color: Color(0xFFA6A9AD),
                                            fontSize: 18,
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
                                left: 50,
                                top: 59,
                                child: Container(
                                  width: 351,
                                  height: 48,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 330,
                                        child: Text(
                                          'New message',
                                          style: TextStyle(
                                            color: Color(0xFFA6A9AD),
                                            fontSize: 18,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -1,
                top: 811,
                child: Container(
                  width: 414,
                  height: 107,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 414,
                          height: 107,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF252525), Color(0xFF222222)],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF424549)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 71,
                        top: 8,
                        child: Container(
                          width: 340,
                          height: 51,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter message',
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
                      Positioned(
                        left: 11,
                        top: 5,
                        child: Container(
                          width: 58.62,
                          height: 56,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/59x56"),
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
                left: -3,
                top: -3,
                child: Container(
                  width: 418,
                  height: 130,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 418,
                          height: 130,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF424549)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 53,
                        child: Container(
                          width: 368,
                          height: 62,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 33,
                                top: 14.19,
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
                                left: 335,
                                top: 14.19,
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
                              Positioned(
                                left: 52,
                                top: 9.12,
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 109,
                                top: 0,
                                child: SizedBox(
                                  width: 207,
                                  height: 62,
                                  child: Text(
                                    'Community',
                                    style: TextStyle(
                                      color: Color(0xFFFBFCF6),
                                      fontSize: 40,
                                      fontFamily: 'Kdam Thmor Pro',
                                      fontWeight: FontWeight.w400,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}