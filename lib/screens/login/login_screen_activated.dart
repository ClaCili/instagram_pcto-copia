import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_pcto/screens/login/widgets/confirm_login_button.dart';
import 'package:instagram_pcto/screens/login/widgets/login_button.dart';

class LoginScreenActivated extends StatelessWidget {
  const LoginScreenActivated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            SvgPicture.asset("assets/logo.svg"),
            SizedBox(height: 39),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 250),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              width: 343,
              height: 44,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 250),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              width: 343,
              height: 44,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.only( right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Non ricordi la password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ConfirmLoginButton(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Colors.blue,),
                SizedBox(width: 8),
                Text("Accedi con Facebook", 
                  style: TextStyle(
                    color: Colors.blue
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
