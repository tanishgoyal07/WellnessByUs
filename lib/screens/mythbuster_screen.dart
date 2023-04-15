import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class MythBUsterPage extends StatefulWidget {
  final String title;
  final int index;
  const MythBUsterPage({super.key, required this.title, required this.index});

  @override
  State<MythBUsterPage> createState() => _MythBUsterPageState();
}

class _MythBUsterPageState extends State<MythBUsterPage> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  late VideoPlayerController _controller4;
  bool isEnglish = true;
  List<String> problems = [
    "You don’t need to compromise with your personal hygiene habits due to your periods. There is no study that states one cannot wash your hair or take a shower on your period. In fact, a warm bath can help you with the painful cramps.",
    "If we stop thinking that periods are gross, shameful, and dirty, then perhaps it wouldn’t be a humanitarian crisis. But the truth is, we have a long history of embarrassment to overcome. It’s so ingrained in our behavior that being put on blast for having our period doesn’t help. We shouldn’t have to feel like we need to whisper about needing a tampon or hide a tampon up our sleeve. Periods aren’t anything out of the ordinary, and neither is talking about them.",
    "This is an extremely common misconception that period blood is dirty or impure. However, what most people fail to understand is that the menstrual cycle is part of a woman’s reproductive system that prepares her body for a (possible) pregnancy. The menstrual blood is also the same blood that circulates throughout the body.",
    "While it is true that tampons may cause the hymen to stretch which a few times may cause breaking of the hymen, it does not cause someone to lose their virginity. Virginity is much beyond just the hymen. The hymen can be naturally broken due to strenuous activities like cycling too. However, usually, when a tampon is inserted, the hymen will stretch to accommodate it, so the odds of affecting a woman’s virginity can be less.",
  ];

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset("assets/myth-1-eng.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller2 = VideoPlayerController.asset("assets/myth-1-hindi.mp4")
      ..initialize().then((_) {
        setState(() {});
      });

    _controller3 = VideoPlayerController.asset(
        "assets/1c122580e6-_20230415_111026_freemium.mp4")
      ..initialize().then((_) {
        setState(() {});
      });

    _controller4 = VideoPlayerController.asset(
        "assets/bc3f5723ae-myth-periods-are-shameful_20230415_103809_freemium.mp4")
      ..initialize().then((_) {
        setState(() {});
      });

    setState(() {
      isEnglish = true;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 126, 59),
        elevation: 0,
        title: Text(
          widget.title.tr,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Text(
                widget.index == 0
                    ? problems[0].tr
                    : widget.index == 1
                        ? problems[1].tr
                        : widget.index == 2
                            ? problems[2].tr
                            : problems[3].tr,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              widget.index == 0 || widget.index == 1
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isEnglish = !isEnglish;
                        });
                      },
                      child: SizedBox(
                        width: 100,
                        height: 60,
                        child: Card(
                          // margin: EdgeInsets.only(left: 4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          color: isEnglish ? Colors.green : Colors.blue[500],
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 8,
                                ),
                                Center(
                                  child: Text(
                                    isEnglish ? "English".tr : "Hindi".tr,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 20,
              ),
              widget.index == 0
                  ? Center(
                      child: AspectRatio(
                        aspectRatio: isEnglish
                            ? _controller1.value.aspectRatio
                            : _controller2.value.aspectRatio,
                        child: VideoPlayer(
                            isEnglish ? _controller1 : _controller2),
                      ),
                    )
                  : widget.index == 1
                      ? Center(
                          child: AspectRatio(
                            aspectRatio: isEnglish
                                ? _controller4.value.aspectRatio
                                : _controller3.value.aspectRatio,
                            child: VideoPlayer(
                                isEnglish ? _controller4 : _controller3),
                          ),
                        )
                      : Container(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              widget.index == 0
                  ? isEnglish
                      ? _controller1.value.isPlaying
                          ? _controller1.pause()
                          : _controller1.play()
                      : _controller2.value.isPlaying
                          ? _controller2.pause()
                          : _controller2.play()
                  : isEnglish
                      ? _controller4.value.isPlaying
                          ? _controller4.pause()
                          : _controller4.play()
                      : _controller3.value.isPlaying
                          ? _controller3.pause()
                          : _controller3.play();
            },
          );
        },
        child: Icon(
          _controller1.value.isPlaying ||
                  _controller2.value.isPlaying ||
                  _controller3.value.isPlaying ||
                  _controller4.value.isPlaying
              ? Icons.pause
              : Icons.play_arrow,
        ),
      ),
    );
  }
}
