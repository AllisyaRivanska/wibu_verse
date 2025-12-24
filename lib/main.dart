import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibu_verse/bloc/top_anime_bloc.dart';
import 'package:wibu_verse/presentation/welcome_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TopAnimeBloc()..getTopAnime(),),
      ],
    
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreenPage(),
      theme: ThemeData(
        
        useMaterial3: false,
      ),
     ) );
  }
}

