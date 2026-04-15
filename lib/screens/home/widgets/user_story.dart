import 'package:flutter/material.dart';
import 'package:instagram_pcto/screens/home/models/user.dart';

class UserStory extends StatelessWidget {
  const UserStory({super.key, required this.utente});

  final User utente;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red, width: 2),
            image: DecorationImage(
              image: NetworkImage(utente.profilePictureUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          utente.username,
          style: const TextStyle(fontSize: 12),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
