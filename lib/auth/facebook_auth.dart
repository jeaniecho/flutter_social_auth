import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class FacebookAuth extends StatelessWidget {
  const FacebookAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("facebook");},
      icon: Image.asset(
        'assets/facebook_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
