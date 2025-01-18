import 'package:flutter/material.dart';

class CreateCommunity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF191919), Color(0xFF222222)],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderIcons(context),
                _buildCommunityPictureSection(context),
                _buildCommunityNameInput(context),
                _buildCommunityDescriptionInput(context),
                SizedBox(height: 20), // Added some padding at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildHeaderIcons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
          child: Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/33x33"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
          child: Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/33x33"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildCommunityPictureSection(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Set Community Picture',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              // Handle community image selection action
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1B1B1B), Color(0xFF1B1B1B)],
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF424549),
                  )
              ),
              child: Center(
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/25x25"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCommunityNameInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Community Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: 'Enter community name',
                hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(5),
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityDescriptionInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(height: 5),
          TextField(
              maxLines: 3,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Enter description about the community',
                  hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(5),
                  )
              )
          ),
        ],
      ),
    );
  }
}