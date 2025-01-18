import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Use Scaffold to handle app-level layouts
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF191919), Color(0xFF252525)],
          ),
        ),
        child: SingleChildScrollView( // Make the column scrollable
          child: Column(
            children: [
              _buildHeader(context),
              _buildRecentCommunitiesSection(context),
              _buildStreakSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF191919), Color(0xFF1A1A1A)],
          ),
          border: Border(
            bottom: BorderSide(color: Color(0xFF424549), width: 1),
          )
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              )
          ),
          Text(
            'RehAPPy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/40x40"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildRecentCommunitiesSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent communities',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          CommunityList(),
        ],
      ),
    );
  }


  Widget _buildStreakSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      child: Column(
        children: [
          Text(
            'Streak',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStreakCircle(context, 'YEARS', '1'),
              _buildStreakCircle(context, 'MONTHS', '11'),
              _buildStreakCircle(context, 'DAYS', '28'),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle add streak action
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor:  Color(0xFF232323),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFA6A9AD)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Add Streak',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle stop streak action
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor:  Color(0xFF232323),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFA6A9AD)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Stop streak',
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
        ],
      ),
    );
  }

  Widget _buildStreakCircle(BuildContext context, String label, String value) {
    return Container(
      width: 100,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF232323), Color(0xFF202020)],
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 32,
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 64,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
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



class CommunityList extends StatelessWidget {
  final List<String> communityNames = List.generate(10, (index) => 'Community ${index + 1}');


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: communityNames.length,
        separatorBuilder: (context, index) => const SizedBox(width: 1),
        itemBuilder: (context, index) {
          return _buildCommunityBox(context, communityNames[index], index+1);
        },
      ),
    );
  }


  Widget _buildCommunityBox(BuildContext context, String name, int notificationCount) {
    return GestureDetector(
      onTap: () {
        // Handle community box tap
      },
      child: Container(
        width: 58.55,
        height: 74.15,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top:0,
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
              bottom:0,
              child: SizedBox(
                width: 50,
                child: Text(
                  name,
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
            Positioned(
              right:0,
              top:0,
              child: Container(
                width: 25,
                height: 25,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              right: 2.5,
              top:2.5,
              child: SizedBox(
                width: 20,
                height: 20,
                child: Text(
                  '$notificationCount',
                  textAlign: TextAlign.center,
                  style: TextStyle(
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