import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';

class RedditAuth extends StatelessWidget {
  const RedditAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {print("reddit");},
      icon: Image.asset(
        'assets/reddit_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
