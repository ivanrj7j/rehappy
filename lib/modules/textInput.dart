import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String promopt;
  final String placeholder;
  final bool isPassword;
  const InputText(
      {super.key,
      required this.promopt,
      required this.placeholder,
      this.isPassword = false});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            widget.promopt,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: widget.placeholder,
            ),
            style: TextStyle(color: Colors.white),
            obscureText: widget.isPassword,
          ),
        ],
      ),
    );
  }
}
