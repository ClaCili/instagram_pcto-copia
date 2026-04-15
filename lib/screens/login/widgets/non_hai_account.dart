import 'package:flutter/material.dart';

class NonHaiAccount extends StatelessWidget {
  const NonHaiAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Non hai un account? "),
        Text("Registrati", 
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          color: Colors.black
          ),
        ),
      ],
    );
  }
}