import 'package:flutter/material.dart';
import 'package:flutter_social_auth/auth/appleAuth.dart';
import 'package:flutter_social_auth/auth/facebookAuth.dart';
import 'package:flutter_social_auth/auth/githubAuth.dart';
import 'package:flutter_social_auth/auth/googleAuth.dart';
import 'package:flutter_social_auth/auth/instagramAuth.dart';
import 'package:flutter_social_auth/auth/kakaoAuth.dart';
import 'package:flutter_social_auth/auth/naverAuth.dart';
import 'package:flutter_social_auth/auth/redditAuth.dart';
import 'package:flutter_social_auth/auth/twitterAuth.dart';
import 'package:flutter_social_auth/common/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Social Auth'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                AppleAuth(),
                SizedBox(width: spacer),
                FacebookAuth(),
                SizedBox(width: spacer),
                GithubAuth(),
              ],
            ),
            const SizedBox(height: spacer),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                GoogleAuth(),
                SizedBox(width: spacer),
                InstagramAuth(),
                SizedBox(width: spacer),
                KakaoAuth(),
              ],
            ),
             const SizedBox(height: spacer),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                NaverAuth(),
                SizedBox(width: spacer),
                RedditAuth(),
                SizedBox(width: spacer),
                TwitterAuth(),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
