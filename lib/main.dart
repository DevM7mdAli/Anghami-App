import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.orange[600],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 94, 119),
        title: const Center(
          child: Text(
            "Angham | أنغام",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const Picture(),
    ),
  ));
}

class Picture extends StatelessWidget {
  const Picture({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/Icon.jpeg"),
                    ),
                    Text(
                      "Welcome To Angham",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          MainPlace()
        ],
      ),
    );
  }
}

class MainPlace extends StatelessWidget {
  const MainPlace({super.key});

  Widget newPodcast({
    String? nameOfSound,
    Color? icoColor,
  }) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource("$nameOfSound.wav"));
        },
        child: Row(
          children: [
            Icon(
              Icons.music_note,
              color: icoColor,
            ),
            const SizedBox(width: 10),
            Text(
              nameOfSound!,
              style: TextStyle(color: icoColor, fontSize: 22),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        newPodcast(
            nameOfSound: "classic alarm",
            icoColor: const Color.fromARGB(255, 66, 94, 119)),
        newPodcast(
            nameOfSound: "dog barking",
            icoColor: const Color.fromARGB(255, 66, 94, 119)),
        newPodcast(
            nameOfSound: "retro game",
            icoColor: const Color.fromARGB(255, 66, 94, 119)),
        newPodcast(
            nameOfSound: "rocket whoosh",
            icoColor: const Color.fromARGB(255, 66, 94, 119)),
        newPodcast(
            nameOfSound: "sweep transition",
            icoColor: const Color.fromARGB(255, 66, 94, 119)),
      ],
    );
  }
}
