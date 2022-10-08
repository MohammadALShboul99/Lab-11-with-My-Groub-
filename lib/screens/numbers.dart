import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../Component/custom_btn.dart';
import '../Component/show_images.dart';

class Number extends StatefulWidget {
  Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  //* audio
  AudioCache cache = AudioCache();
  AudioPlayer player = AudioPlayer();

  //* Image
  String backgroundImage = 'Assets/Images/numbers.jpeg';
  String image_1 = 'Assets/Images/1.jpeg';
  String image_2 = 'Assets/Images/2.jpeg';
  String image_3 = 'Assets/Images/3.jpeg';
  String image_4 = 'Assets/Images/4.jpeg';
  String image_5 = 'Assets/Images/5.jpg';
  String image_6 = 'Assets/Images/6.jpeg';
  String image_7 = 'Assets/Images/7.jpeg';
  String image_8 = 'Assets/Images/8.jpeg';
  String image_9 = 'Assets/Images/9.jpeg';
  String image_10 = 'Assets/Images/10.jpeg';

  //* Audio
  String audio_1 = 'Audios/1.mp3';
  String audio_2 = 'Audios/2.mp3';
  String audio_3 = 'Audios/3.mp3';
  String audio_4 = 'Audios/4.mp3';
  String audio_5 = 'Audios/5.mp3';
  String audio_6 = 'Audios/6.mp3';
  String audio_7 = 'Audios/7.m4a';
  String audio_8 = 'Audios/8.mp3';
  String audio_9 = 'Audios/9.mp3';
  String audio_10 = 'Audios/10.mp3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              showImages(
                image: backgroundImage,
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                        title: '1',
                        onClick: () {
                          clickBtn(
                            image: image_1,
                            audioPlayer: audio_1,
                          );
                        },
                        colorBtn: Colors.teal[400],
                      ),
                      SizedBox(width: 5),
                      customButton(
                        title: '2',
                        onClick: () {
                          clickBtn(
                            image: image_2,
                            audioPlayer: audio_2,
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      customButton(
                        title: '3',
                        onClick: () {
                          clickBtn(
                            image: image_3,
                            audioPlayer: audio_3,
                          );
                        },
                        colorBtn: Colors.teal[400],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton(
                        title: '4',
                        onClick: () {
                          clickBtn(
                            image: image_4,
                            audioPlayer: audio_4,
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      customButton(
                        title: '5',
                        onClick: () {
                          clickBtn(
                            image: image_5,
                            audioPlayer: audio_5,
                          );
                        },
                        colorBtn: Colors.teal[400],
                      ),
                      SizedBox(width: 5),
                      customButton(
                        title: '6',
                        onClick: () {
                          clickBtn(
                            image: image_6,
                            audioPlayer: audio_6,
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      customButton(
                        title: '7',
                        onClick: () {
                          clickBtn(
                            image: image_7,
                            audioPlayer: audio_7,
                          );
                        },
                        colorBtn: Colors.teal[400],
                      ),
                      SizedBox(width: 5),
                      customButton(
                        title: '8',
                        onClick: () {
                          clickBtn(
                            image: image_8,
                            audioPlayer: audio_8,
                          );
                        },
                      ),
                      SizedBox(width: 5),
                      customButton(
                        title: '9',
                        onClick: () {
                          clickBtn(
                            image: image_9,
                            audioPlayer: audio_9,
                          );
                        },
                        colorBtn: Colors.teal[400],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox(width: 5)),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            clickBtn(
                              image: image_10,
                              audioPlayer: audio_10,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                          ),
                          child: Text('10'),
                        ),
                      ),
                      Expanded(child: SizedBox(width: 5)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void clickBtn({required String image, required String audioPlayer}) async {
    setState(() {
      backgroundImage = image;
    });

    cache.clearAll();

    player.stop();

    // player = await cache.play(audioPlayer);
  }
}
