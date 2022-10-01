import 'package:flutter/material.dart';
import 'package:flutter_social_auth/common/size.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AppleAuth extends StatefulWidget {
  const AppleAuth({Key? key}) : super(key: key);

  @override
  State<AppleAuth> createState() => _AppleAuthState();
}

class _AppleAuthState extends State<AppleAuth> {
  Future<bool> signIn() async {
    try {
      if (await SignInWithApple.isAvailable()) {
        final AuthorizationCredentialAppleID credential = await SignInWithApple.getAppleIDCredential(
            scopes: [
              AppleIDAuthorizationScopes.fullName,
              AppleIDAuthorizationScopes.email,
            ],
        );

        debugPrint('credential.state = $credential');
        debugPrint('credential.state = ${credential.email}');
        debugPrint('credential.state = ${credential.userIdentifier}');

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
        String title = "Apple Sign In";
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
        'assets/apple_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}


