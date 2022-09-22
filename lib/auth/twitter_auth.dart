import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class TwitterAuth extends StatelessWidget {
  const TwitterAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("twitter");},
      icon: Image.asset(
        'assets/twitter_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
