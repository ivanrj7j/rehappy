import 'package:flutter/material.dart';

import 'chat.dart'; // Import the chat.dart file

// Community Widget Component
class CommunityWidget extends StatelessWidget {
  final String communityName;
  final String notificationCount;
  final double width;
  final double height;
  final VoidCallback? onTap;

  const CommunityWidget({
    Key? key,
    required this.communityName,
    this.notificationCount = '2',
    this.width = 58.55,
    this.height = 62.15,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 50.15,
              child: SizedBox(
                width: 50,
                child: Text(
                  communityName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFFFBFCF6),
                    fontSize: 8,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 33.55,
              top: 0,
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 36,
              top: 2.15,
              child: SizedBox(
                width: 20,
                height: 20,
                child: Text(
                  notificationCount,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Streak Circle Component
class StreakCircle extends StatelessWidget {
  final String value;
  final String label;

  const StreakCircle({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF232323), Color(0xFF202020)],
                ),
                shape: BoxShape.circle,
                border: Border(
                  top: BorderSide(width: 1, color: Colors.white),
                  bottom: BorderSide(width: 1, color: Colors.white),
                  left: BorderSide(width: 1, color: Colors.white),
                  right: BorderSide(width: 1, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 32,
            child: SizedBox(
              width: 100,
              height: 100,
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 64,
                  fontFamily: 'Kdam Thmor Pro',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 132,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Button Component
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const CustomButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 121,
        height: 51,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF242424), Color(0xFF232323)],
          ),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: const Color(0xFFA6A9AD)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Header Component
class Header extends StatelessWidget {
  final VoidCallback? onProfileTap;
  final VoidCallback? onLogoTap;

  const Header({
    Key? key,
    this.onProfileTap,
    this.onLogoTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF191919), Color(0xFF1A1A1A)],
                  ),
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFF424549)),
                  )),
            ),
          ),
          Positioned(
            left: 18,
            top: 53.41,
            child: SizedBox(
              width: 381,
              height: 62.48,
              child: Stack(
                children: [
                  Positioned(
                    left: 91,
                    top: 0,
                    child: GestureDetector(
                      onTap: onLogoTap,
                      child: SizedBox(
                        width: 210,
                        height: 62.48,
                        child: Text(
                          'RehAPPy',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 9.07,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 341,
                    top: 6.57,
                    child: GestureDetector(
                      onTap: onProfileTap,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/40x40"),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
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
    );
  }
}

// Recent Community List Component
class RecentCommunityList extends StatelessWidget {
  final List<String> communityNames;

  const RecentCommunityList({
    Key? key,
    required this.communityNames,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        communityNames.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 1),
          child: CommunityWidget(
            communityName: communityNames[index],
            height: index == communityNames.length - 1 ? 74.15 : 62.15,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chat()),
              );
            },
          ),
        ),
      ),
    );
  }
}

// Main Menu Widget
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 917,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF191919), Color(0xFF252525)],
          ),
        ),
        child: Stack(
          children: [
            // Header
            Positioned(
              left: -3,
              top: -3,
              child: Header(
                onProfileTap: () {
                  print('Profile tapped');
                  // Add profile navigation or action
                },
                onLogoTap: () {
                  print('Logo tapped');
                  // Add logo tap action
                },
              ),
            ),

            // Recent Communities Text
            Positioned(
              left: 10,
              top: 132,
              child: Text(
                'Recent communities',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Kdam Thmor Pro',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Community List
            Positioned(
              left: 9,
              top: 167.85,
              child: RecentCommunityList(
                communityNames:
                    List.generate(10, (index) => 'Community ${index + 1}'),
              ),
            ),

            // Streak Section
            Positioned(
              left: 6,
              top: 342,
              child: SizedBox(
                width: 400,
                height: 504,
                child: Stack(
                  children: [
                    // Streak Title
                    Positioned(
                      left: 116,
                      top: 0,
                      child: const SizedBox(
                        width: 171,
                        height: 40,
                        child: Text(
                          'Streak',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                    // Year Circle
                    Positioned(
                      left: 100,
                      top: 60,
                      child: const StreakCircle(value: '1', label: 'YEARS'),
                    ),

                    // Months Circle
                    Positioned(
                      left: 0,
                      top: 233,
                      child: const StreakCircle(value: '11', label: 'MONTHS'),
                    ),

                    // Days Circle
                    Positioned(
                      left: 200,
                      top: 233,
                      child: const StreakCircle(value: '28', label: 'DAYS'),
                    ),

                    // Buttons
                    Positioned(
                      left: 39,
                      top: 453,
                      child: CustomButton(
                        text: 'Add Streak',
                        onTap: () {
                          print('Add Streak tapped');
                          // Add streak action
                        },
                      ),
                    ),
                    Positioned(
                      left: 239,
                      top: 453,
                      child: CustomButton(
                        text: 'Stop streak',
                        onTap: () {
                          print('Stop Streak tapped');
                          // Stop streak action
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
