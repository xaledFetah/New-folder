import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final iconImagePath;
  final buttonTitle;
  const MyButton(
      {super.key, required this.iconImagePath, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        Container(
          height: 86,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 40,
                  spreadRadius: 10,
                ),
              ]),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        // sizedbox
        SizedBox(
          height: 10,
        ),
        // text
        Text(
          buttonTitle,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        )
      ],
    );
  }
}
