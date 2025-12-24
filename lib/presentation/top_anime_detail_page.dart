import 'package:flutter/material.dart';
import 'package:wibu_verse/model/anime/top_anime_model.dart'; 

class TopAnimeDetailPage extends StatelessWidget {
  final Data anime;

  const TopAnimeDetailPage({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(anime.title ?? "Detail Anime"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey[200],
              child: Image.network(
                anime.images?.jpg?.largeImageUrl ?? '',
                fit: BoxFit.contain,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    anime.title ?? "No Title",
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        "${anime.score ?? '-'} | Rank: ${anime.rank ?? '-'}",
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Divider(height: 30),

                  const Text(
                    "Synopsis: ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    anime.synopsis ?? "No synopsis available.",
                    style: const TextStyle(fontSize: 15, height: 1.5),
                  ),
                  
                  const SizedBox(height: 20),
                  Text("Type: ${anime.type ?? '-'}"),
                  Text("Episodes: ${anime.episodes ?? '-'}"),
                  Text("Status: ${anime.status ?? '-'}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}