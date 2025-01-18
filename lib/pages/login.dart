import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
        ),
        child: SingleChildScrollView( // Make the column scrollable
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderIcon(context),
                SizedBox(height: 10),
                _buildTitle(context),
                SizedBox(height: 40),
                _buildUsernameInput(context),
                _buildPasswordInput(context),
                SizedBox(height: 20),
                _buildLogInButton(context),
                SizedBox(height: 10),
                _buildORText(context),
                SizedBox(height: 10),
                _buildSignUpButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderIcon(BuildContext context) {
    return  Transform(
      transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
      child: Container(
        width: 33,
        height: 33,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/33x33"),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle
        ),
      ),
    );
  }


  Widget _buildTitle(BuildContext context) {
    return Center(
      child: Text(
        'RehAppy',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontFamily: 'Kdam Thmor Pro',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildUsernameInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
                    borderRadius: BorderRadius.circular(10)
                )
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildLogInButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Handle log in
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor: Color(0xA0000064),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(color: Color(0xFFC8C8C8)),
            )
        ),
        child: Text(
          'Log in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Kdam Thmor Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Handle sign up
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor: Color(0xA0000064),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(color: Color(0xFFC8C8C8))
            )
        ),
        child: Text(
          'Sign up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Kdam Thmor Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildORText(BuildContext context) {
    return Center(
      child: Text(
        'OR',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Kdam Thmor Pro',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}