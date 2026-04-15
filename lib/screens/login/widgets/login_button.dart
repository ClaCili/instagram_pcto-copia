import 'package:flutter/material.dart';
import 'package:instagram_pcto/screens/login/login_screen_activated.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreenActivated()),
        );
      },
      
      child: Container(
        height: 44,
        width: 307,
        child: Center(
          child: Text(
            "Accedi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 55, 151, 239),
        ),
      ),
    );
  }
}
