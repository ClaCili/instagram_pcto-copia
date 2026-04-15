import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_pcto/screens/home/models/user.dart';
import 'package:instagram_pcto/screens/home/widgets/user_story.dart';

final List<User> listaUtenti = [
  User(
    username: "La tua storia",
    profilePictureUrl: "https://picsum.photos/seed/la_tua_storia/150", bio: '', followers: 0,
  ),
  User(
    username: "marta.dev",
    profilePictureUrl: "https://picsum.photos/seed/marta_dev/150", bio: '', followers: 14,
  ),
  User(
    username: "luca.photo",
    profilePictureUrl: "https://picsum.photos/seed/luca_photo/150", bio: '', followers: 15,
  ),
  User(
    username: "anna.design",
    profilePictureUrl: "https://picsum.photos/seed/anna_design/150", bio: '', followers: 15,
  ),
  User(
    username: "marco.rossi",
    profilePictureUrl: "https://picsum.photos/seed/marco_rossi/150", bio: '', followers: 20,
  ),
  User(
    username: "giulia.bianchi",
    profilePictureUrl: "https://picsum.photos/seed/giulia_bianchi/150", bio: '', followers: 25,
  ),
  User(
    username: "simone.travel",
    profilePictureUrl: "https://picsum.photos/seed/simone_travel/150", bio: '', followers: 30,
  ),
  User(
    username: "elena.foodie",
    profilePictureUrl: "https://picsum.photos/seed/elena_foodie/150", bio: '', followers: 35,
  ),
  User(
    username: "giulia.bianchi",
    profilePictureUrl: "https://picsum.photos/seed/giulia_bianchi/150", bio: '', followers: 25,
  ),
  User(
    username: "simone.travel",
    profilePictureUrl: "https://picsum.photos/seed/simone_travel/150", bio: '', followers: 30,
  ),
  User(
    username: "elena.foodie",
    profilePictureUrl: "https://picsum.photos/seed/elena_foodie/150", bio: '', followers: 35,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Placeholder()),
            );
          },
          child: Center(
            child: Icon(  Icons.camera_alt_outlined)
          ),
        ),
        title: SvgPicture.asset("assets/logo.svg", height: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: const Icon(Icons.send_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 0.5),
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: listaUtenti
                      .map(
                        (utente) => Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: UserStory(utente: utente,),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
