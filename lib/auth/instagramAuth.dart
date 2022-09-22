import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class InstagramAuth extends StatelessWidget {
  const InstagramAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("instagram");},
      icon: Image.asset(
        'assets/instagram_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
