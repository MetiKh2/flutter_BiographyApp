import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudiosScreen extends StatefulWidget {
  const AudiosScreen({super.key});

  @override
  State<AudiosScreen> createState() => _AudiosScreenState();
}

class _AudiosScreenState extends State<AudiosScreen> {
  final player = AudioPlayer();
  void playSound(int soundNumber) async {
    final duration = await player.setAsset('audios/note1.wav');
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff064635),
        shadowColor: const Color(0xff519259),
        elevation: 15,
        title: const Text(
          'شروه های لری',
          style: TextStyle(
              fontSize: 28, color: Color(0xfff0bb62), fontFamily: 'btir'),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfff4eea0),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/6.jpg'),
                ),
                title: Text('Hello'),
                subtitle: Text('nock nock'),
                trailing: GestureDetector(
                    onTap: () {
                      setState(() {
                        playSound(1);
                      });
                    },
                    child: Icon(Icons.play_circle)),
              ),
              Divider()
            ],
          );
        },
      ),
    );
  }
}
