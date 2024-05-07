import 'package:flutter/material.dart';

import 'Colors.dart';

class RoundButton extends StatelessWidget {
  String title;
  final VoidCallback onPressed;

  RoundButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:AppColors.secondaryColor,
        ),
        child:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
