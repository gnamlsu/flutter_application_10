import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(71, 182, 255, 1)),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet my dog Rui!', style: GoogleFonts.comicNeue(fontSize: 35, fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromRGBO(71, 182, 255, 1),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.network('https://i.imgur.com/d7aG7zs.jpeg', scale: 3.5),
            SizedBox(height: 20),
            Text(
              'Name: Rui\nAge: 3\nBreed: Maltipoo\nLikes: Being held,\nfollowing you around,\nrunning around everywhere',
              textAlign: TextAlign.center,
              style: GoogleFonts.comicNeue(
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LynnPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(17),
              ),
              child: Icon(Icons.pets),
            ),
          ],
        ),
      ),
    );
  }
}

class LynnPage extends StatelessWidget {
  const LynnPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lynn\'s Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Screen 2'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RiversPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(17),
              ),
              child: Icon(Icons.pets),
            ),
          ],
        ),
      ),
    );
  }
}

class RiversPage extends StatelessWidget {
  const RiversPage({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rivers\'s Page'),
      ),
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/koromaru.jpg',  // Replace with your actual image name
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          // Content on top of the image
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'This is THE Rivers page',
                  style: TextStyle(
                    color: Color.fromARGB(235, 218, 11, 14),  // Make text visible on the image
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FirstScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(17),
                  ),
                  child: Icon(Icons.pets),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}