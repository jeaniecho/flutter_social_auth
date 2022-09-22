import 'package:flutter/material.dart';
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
              children: <Widget>[
                // Apple
                IconButton(
                  onPressed: () {print("apple");},
                  icon: Image.asset(
                    'assets/apple_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),

                const SizedBox(width: spacer),

                // Facebook
                IconButton(
                  onPressed: () {print("facebook");},
                  icon: Image.asset(
                    'assets/facebook_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),

                const SizedBox(width: spacer),

                /** Github **/
                IconButton(
                  onPressed: () {print("github");},
                  icon: Image.asset(
                    'assets/github_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),
              ],
            ),

            const SizedBox(height: spacer),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /** Google **/
                IconButton(
                  onPressed: () {print("google");},
                  icon: Image.asset(
                    'assets/google_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),

                const SizedBox(width: spacer),

                /** Instagram **/
                IconButton(
                  onPressed: () {print("instagram");},
                  icon: Image.asset(
                    'assets/instagram_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),

                const SizedBox(width: spacer),

                /** Kakao **/
                IconButton(
                  onPressed: () {print("kakao");},
                  icon: Image.asset(
                    'assets/kakao_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),
              ],
            ),

            const SizedBox(height: spacer),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /** Naver **/
                IconButton(
                  onPressed: () {print("naver");},
                  icon: Image.asset(
                    'assets/naver_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),

                const SizedBox(width: spacer),

                /** Reddit **/
                IconButton(
                  onPressed: () {print("reddit");},
                  icon: Image.asset(
                    'assets/reddit_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),

                const SizedBox(width: spacer),

                /** Twitter **/
                IconButton(
                  onPressed: () {print("twitter");},
                  icon: Image.asset(
                    'assets/twitter_icon.png',
                    fit: BoxFit.cover,
                  ),
                  iconSize: iconSize,
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
