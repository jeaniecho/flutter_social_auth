import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class GoogleAuth extends StatelessWidget {
  const GoogleAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("google");},
      icon: Image.asset(
        'assets/google_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
