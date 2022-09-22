import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class GithubAuth extends StatelessWidget {
  const GithubAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("github");},
      icon: Image.asset(
        'assets/github_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
