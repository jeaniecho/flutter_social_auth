import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_social_auth/auth/apple_auth.dart';
import 'package:flutter_social_auth/auth/facebook_auth.dart';
import 'package:flutter_social_auth/auth/github_auth.dart';
import 'package:flutter_social_auth/auth/google_auth.dart';
import 'package:flutter_social_auth/auth/instagram_auth.dart';
import 'package:flutter_social_auth/auth/kakao_auth.dart';
import 'package:flutter_social_auth/auth/naver_auth.dart';
import 'package:flutter_social_auth/auth/reddit_auth.dart';
import 'package:flutter_social_auth/auth/twitter_auth.dart';
import 'package:flutter_social_auth/common/size.dart';

Future<void> main() async {
  // flutter_config
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

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
              children: <Widget>[
                AppleAuth(),
                const SizedBox(width: spacer),
                FacebookAuth(),
                const SizedBox(width: spacer),
                GithubAuth(),
              ],
            ),
            const SizedBox(height: spacer),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GoogleAuth(),
                const SizedBox(width: spacer),
                InstagramAuth(),
                const SizedBox(width: spacer),
                KakaoAuth(),
              ],
            ),
             const SizedBox(height: spacer),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NaverAuth(),
                const SizedBox(width: spacer),
                RedditAuth(),
                const SizedBox(width: spacer),
                TwitterAuth(),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
