import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LogIn(),
  ));
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    // Perform login logic here
    print('Username: ${_usernameController.text}');
    print('Password: ${_passwordController.text}');
    // Add your authentication logic or navigation here
  }

  void _signUp() {
    // Perform sign-up logic here
    print('Sign up requested');
    // Add navigation or sign-up related actions
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container to cover the whole screen
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.5),
          ),
          // Main Layout Column
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // RehAppy Title
                  Text(
                    'RehAppy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Kdam Thmor Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(3.14),
                    child: Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/33x33"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Username Input
                  CustomTextField(
                    controller: _usernameController,
                    labelText: 'Enter username',
                    hintText: ' Username',
                  ),

                  const SizedBox(height: 20),
                  // Password Input
                  CustomTextField(
                    controller: _passwordController,
                    labelText: 'Enter Password',
                    hintText: '  Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 30),
                  // Login Button
                  CustomButton(
                    text: 'Log in',
                    onPressed: _login,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'OR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Kdam Thmor Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 10),

                  CustomButton(
                    text: 'Sign up',
                    onPressed: _signUp,
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

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;

  CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Kdam Thmor Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFFBFCF6)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                    controller: controller,
                    obscureText: obscureText,
                    style: TextStyle(
                      color: Color(0xFFA6A9AD),
                      fontSize: 20,
                      fontFamily: 'Kdam Thmor Pro',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                          color: Color(0xFFA6A9AD),
                          fontSize: 20,
                          fontFamily: 'Kdam Thmor Pro',
                          fontWeight: FontWeight.w400,
                        ))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xA0000064),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFC8C8C8)),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Kdam Thmor Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
