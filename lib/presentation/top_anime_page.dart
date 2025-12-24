import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibu_verse/bloc/top_anime_bloc.dart';
import 'package:wibu_verse/bloc/top_anime_state.dart';
import 'package:wibu_verse/presentation/top_anime_detail_page.dart';

class TopAnimePage extends StatefulWidget {
  const TopAnimePage({super.key});

  @override
  State<TopAnimePage> createState() => _TopAnimePageState();
}

class _TopAnimePageState extends State<TopAnimePage> {
  @override 
  void initState() {
    super.initState();
    context.read<TopAnimeBloc>().getTopAnime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top 25 Anime of All Time", style: 
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: Colors.blueGrey,
      ),
      body: BlocBuilder<TopAnimeBloc, TopAnimeState>(
        builder: (context, state) {
          
          if (state is TopAnimeLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is TopAnimeLoaded) {
            return ListView.builder(
              itemCount: state.topAnime.length,
              itemBuilder: (context, index) {
                final anime = state.topAnime[index];
                
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TopAnimeDetailPage(anime: anime),),);
                    },
                    leading:SizedBox(width: 90,
                    child: Row(children: [
                      Text(
                        "${index + 1}",
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey,),),
                        const SizedBox(width: 4),
                     ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        anime.images?.jpg?.imageUrl ?? '',
                        width: 50,
                        height: 70,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => 
                          const Icon(Icons.broken_image),
                      ),
                    ),
                  ],
                 ),
                ),
                    title: Text(
                      anime.title ?? "No Title",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Rating: ${anime.score ?? '-'}"),

                      const SizedBox(height: 3),

                      Text(
                        anime.synopsis ?? "No Synopsis yet...",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,)
                  ],),
                ),);
              },
            );
          }

        
          if (state is TopAnimeError) {
            return Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error, color: Colors.red, size: 50),
                const SizedBox(height: 10),
                Text(state.message),
              ],),
            );
          }
            return const Center(child: CircularProgressIndicator());
          },
      ),
    );
  }
}