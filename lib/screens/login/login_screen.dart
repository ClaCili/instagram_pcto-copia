import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_pcto/screens/login/widgets/login_button.dart';
import 'package:instagram_pcto/screens/login/widgets/non_hai_account.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          bottom: true,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: SvgPicture.asset("assets/logo.svg")),
                SizedBox(height: 40),
                LoginButton()
              ],
            ),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey, width: 0.5
                    ),
                  ),
                ),
                height: 50,
                width: 375,
                child: NonHaiAccount()
              ),
          ),
        ),
      );
  }
}