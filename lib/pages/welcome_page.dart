import 'package:flutter/material.dart';
import 'package:foodie_flutter/pages/auth/register_page.dart';
import '../components/button/app_elaved_button.dart';
import '../gen/assets.gen.dart';
import '../resource/app_color.dart';
import '../resource/app_style.dart';
import 'auth/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final textStyle = AppStyle.h14Medium.copyWith(color: AppColor.brown);

    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        children: [
          Positioned(
            top: 0.0,
            child: Image.asset(Assets.images.logo2.path, width: size.width),
          ),
          Positioned(
            left: 20.0,
            top: size.height / 2.0,
            right: 20.0,
            child: Column(
              children: [
                const Text('Welcome', style: AppStyle.h32Normal),
                Text('Lorem ipsum dolor sit amet, consect-', style: textStyle),
                Text('tetur adipiscing elit. Vivamus et felis',
                    style: textStyle),
                Text('dolor. Donec vitae facilisis velit.', style: textStyle),
              ],
            ),
          ),
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 72.0,
            child: Column(
              children: [
                AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  text: 'Login',
                ),
                const SizedBox(height: 20.0),
                AppElevatedButton(
                  onPressed: () {Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                      (Route<dynamic> route) => false,
                    );
                    } ,//khong dc back lai
                  color: AppColor.white,
                  text: 'Sign up',
                  textColor: AppColor.red,
                ),
              ],
            ),
            

          ),
        ],
      ),
    );
  }
}
