import 'package:flutter/material.dart';
import 'package:instagram_pcto/screens/home/home_screen.dart';

class ConfirmLoginButton extends StatelessWidget {
  const ConfirmLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
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
