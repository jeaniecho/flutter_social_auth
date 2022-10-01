import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social_auth/common/size.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class KakaoAuth extends StatefulWidget {
  const KakaoAuth({Key? key}) : super(key: key);

  @override
  State<KakaoAuth> createState() => _KakaoAuthState();
}

class _KakaoAuthState extends State<KakaoAuth> {
  Future<bool> signIn() async {
    try {
      final installed = await isKakaoTalkInstalled();

      if (installed) {
        try {
          OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
          debugPrint('accessToken = ${token.accessToken}');

          return true;
        } catch (e) {
          debugPrint(e.toString());

          if (e is PlatformException && e.code == "CANCELED") {
            return false;
          }

          try {
            OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
            debugPrint('accessToken = ${token.accessToken}');

            return true;
          } catch (e) {
            debugPrint(e.toString());
          }
        }
      } else {
        try {
          OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
          debugPrint('accessToken = ${token.accessToken}');

          return true;
        } catch (e) {
          debugPrint(e.toString());
        }

        return false;
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
        String title = "Kakao Sign In";
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
        'assets/kakao_icon.png',
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
    );
  }
}
