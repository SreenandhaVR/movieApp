import 'package:flutter/material.dart';
import 'package:umdb/pages/top_rated_movies_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UMDB',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',  // Change to Poppins font family
            fontWeight: FontWeight.bold, // Change to bold weight
            fontSize: 24, // Change to desired font size
            color: Colors.white, // Change to desired font color
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black87, fontSize: 16),
        ),
      ),
      home: NewTopRatedMovies(),
    );
  }
}

class NewTopRatedMovies extends StatefulWidget {
  const NewTopRatedMovies({super.key});

  @override
  State<NewTopRatedMovies> createState() => _NewTopRatedMoviesState();
}

class _NewTopRatedMoviesState extends State<NewTopRatedMovies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Rated Movies',
          style: TextStyle(
            fontFamily: 'Poppins',  // Change to Poppins font family
            fontWeight: FontWeight.bold, // Change to bold weight
            fontSize: 24, // Change to desired font size
            color: Colors.white, // Change to desired font color
          ),
        ),
      ),
      body: const TopRatedMoviesPage(),
    );
  }
}
