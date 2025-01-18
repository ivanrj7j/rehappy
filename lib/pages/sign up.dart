import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
        child: SingleChildScrollView( // Make column scrollable
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderIcons(context),
                _buildProfilePictureSection(context),
                _buildUsernameInput(context),
                _buildPasswordInput(context),
                _buildBioInput(context),
                SizedBox(height: 20),
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


  Widget _buildProfilePictureSection(BuildContext context) {
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
            'Set Profile Picture',
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
              // Handle profile image selection
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1A1C1F), Color(0xFF1B1D20)],
                  ),
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

  Widget _buildUsernameInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter username',
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
                hintText: 'Username',
                hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFBFCF6)),
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Password',
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
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFBFCF6)),
                    borderRadius: BorderRadius.circular(10),
                  )
              )
          ),
        ],
      ),
    );
  }

  Widget _buildBioInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your bio ',
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
            maxLines: 3,
            decoration: InputDecoration(
                hintText: 'Bio',
                hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFBFCF6)),
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
        ],
      ),
    );
  }
}
