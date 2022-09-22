import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class KakaoAuth extends StatelessWidget {
  const KakaoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("kakao");},
      icon: Image.asset(
        'assets/kakao_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
