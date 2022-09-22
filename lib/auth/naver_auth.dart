import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class NaverAuth extends StatelessWidget {
  const NaverAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("naver");},
      icon: Image.asset(
        'assets/naver_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
