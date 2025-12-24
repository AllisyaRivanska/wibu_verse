import 'package:flutter/material.dart';
import 'package:wibu_verse/presentation/top_anime_page.dart';


class WelcomeScreenPage extends StatelessWidget {
  const WelcomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.auto_awesome, size: 80, color: Colors.white),
            const SizedBox(height: 20),
            const Text(
              "WibuVerse",
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Colors.white),

            ),
            const Text(
              "Tempat Anime Favoritmu",
              style: TextStyle(
                color: Colors.white70),
            ),

            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 71, 149, 55),             
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TopAnimePage()));
              },
              child: const Text("Explore Now"),
            ),
          ],
        ),),
    );
  }
}