import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class AppleAuth extends StatelessWidget {
  const AppleAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("apple");},
      icon: Image.asset(
        'assets/apple_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}

