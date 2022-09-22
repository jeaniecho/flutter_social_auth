import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_social_auth/common/size.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth extends StatefulWidget {
  GoogleAuth({Key? key}) : super(key: key);

  @override
  State<GoogleAuth> createState() => _GoogleAuthState();
}

class _GoogleAuthState extends State<GoogleAuth> {
  Future<bool> signIn() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn(
          clientId: dotenv.env['GOOGLE_CLIENT_ID_IOS']).signIn();

      if (googleUser != null) {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        String title = "Google Sign In";
        String content = await signIn() ? "Successfully signed in!" : "Sign in failed :(";

        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
      icon: Image.asset(
        'assets/google_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
