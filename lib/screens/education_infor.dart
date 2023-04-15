import 'package:flutter/material.dart';
import 'package:indu_wellness/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EducztionInfoPage extends StatefulWidget {
  final String title;
  final int index;
  const EducztionInfoPage(
      {super.key, required this.index, required this.title});

  @override
  State<EducztionInfoPage> createState() => _EducztionInfoPageState();
}

class _EducztionInfoPageState extends State<EducztionInfoPage> {
  List<String> solutions = [
    "Ways to maintain good menstrual hygiene:\n 1. Wash your hands before and after using the restroom and before using a menstrual product.\n 2.Discard used disposable menstrual products properly: wrap them with toilet paper, a tissue, or other material and then toss in a trash bin. Do not flush menstrual products down the toilet. \n 3.Sanitary pads: Change sanitary pads every few hours, no matter how light the flow. Change them more frequently if your period is heavy.\n4.Tampons: Change tampons every 4 to 8 hours.Do not wear a single tampon for more than 8 hours at a time.\n5. Use the lowest-absorbency tampon needed. If you can wear one tampon for up to 8 hours without changing, the absorbency may be too high.\n6.Menstrual cups: Clean cups every day after use. Sanitize menstrual cups after your period is over by rinsing them thoroughly and then placing them in boiling water for one to two minutes.\n7.Period underwear: Most reusable period underwear is machine washable. Follow product directions on the best way to clean.",
    "When women do not have periods, it can be caused by factors such as pregnancy, breastfeeding, hormonal imbalances, or underlying medical conditions. Treatment options depend on the cause and may include lifestyle changes or medication.",
    "Simply put: A period is when a woman’s body releases tissue it no longer needs. This tissue comes from the uterus, which is where a baby (fetus) can develop in the female body. Every month or so, the uterus lining gets thicker to prepare for a fertilized egg if the woman becomes pregnant. If the egg doesn’t get fertilized, that lining is released from the body as blood through the vagina. This monthly process is called menstruation or a period. So when a girl has her period, her body is just getting rid of a small amount of blood and some unneeded tissue. It is a natural, normal body process for all females as they become women and mature physically.",
    "The actual flow of your period doesn’t feel like much when it’s happening. Chances are, you won’t even feel it coming out. When you actually start your period, you may feel some dampness in your private area — this may be caused by a few spots of blood on your underwear.",
    "Menstruation itself doesn’t hurt, but some girls and women get cramps or other symptoms during their periods that may be uncomfortable. This is typically due to the hormones your body releases during menstruation that cause the uterus to contract so it can shed it’s lining.",
    "It’s a strange term, but a “sanitary napkin” or “sanitary pad” just means an absorbent pad that you wear on your panties during your period in order to absorb menstrual blood. Sanitary napkins (or pads) come in a number of varieties and sizes. Depending on your menstrual flow and preference, you need to choose a sanitary napkin of appropriate thickness, length and absorbency. Don’t worry, after the first few times of trying to understand your body’s response to periods, you will eventually settle on the right ‘type of sanitary pad’ However, another question that pops up at this point is - how to use sanitary napkins?",
    "Relax. It's normal for your period not to be normal -- especially in the first few years after starting your period . Stress, exercise, and sickness can all cause you to miss one. It can happen if you gain or lose a lot of weight. Of course, it can also happen if you're pregnant. If you skip more than two in a row, see your doctor.",
    "Tampons rarely cause infections leading to TSS. To lower your chances of getting the infection, change your tampon every 4 hours or so. Wear a thinner tampon, too. If you have fever, chills, diarrhea, nausea, or a rash 2-3 days after your period starts, see your doctor.",
    "You can get pregnant at any time, even when you're bleeding. If you don't want that, talk to your doctor about using some type of birth control, no matter what time of the month it is. It's also important to protect yourself against STDs, so check with your doctor to make sure you're practicing safe sex.",
    "You may want to exercise, skip salty foods, and cut back on caffeine the week before your period. If your mood is still tricky, talk to your doctor. They may suggest you take medication.",
  ];

  final List<String> _videoUrlList = [
    "https://www.youtube.com/watch?v=qFLElwY-SYE",
    "https://www.youtube.com/watch?v=eEeLrV3BGHs",
    "https://www.youtube.com/watch?v=FBfAD5z-g0Q",
    "https://www.youtube.com/watch?v=cfROFgkV43E&list=PLK7J8Xq7wq-PxSYok2zpeidjnLbvu0wzd&index=3",
    "https://www.youtube.com/watch?v=5u6Y6ZP2_Wg&list=PLK7J8Xq7wq-PxSYok2zpeidjnLbvu0wzd&index=5",
    "https://www.youtube.com/watch?v=J6bZsI1pi_o&list=PLK7J8Xq7wq-PxSYok2zpeidjnLbvu0wzd&index=6",
    "https://www.youtube.com/watch?v=jsEcDAx8S1g",
    "https://www.youtube.com/watch?v=C81mi-EZFSI",
    "https://www.youtube.com/watch?v=qCjZspZNf40",
    "https://www.youtube.com/watch?v=bjB7FH8hs0g"
  ];

  List<YoutubePlayerController> lYTC = [];

  Map<String, dynamic> cStates = {};

  @override
  void initState() {
    super.initState();
    fillYTlists();
  }

  fillYTlists() {
    for (var element in _videoUrlList) {
      String _id = YoutubePlayer.convertUrlToId(element)!;
      YoutubePlayerController _ytController = YoutubePlayerController(
        initialVideoId: _id,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          enableCaption: true,
          captionLanguage: 'en',
        ),
      );

      _ytController.addListener(() {
        print('for $_id got isPlaying state ${_ytController.value.isPlaying}');
        if (cStates[_id] != _ytController.value.isPlaying) {
          if (mounted) {
            setState(() {
              cStates[_id] = _ytController.value.isPlaying;
            });
          }
        }
      });

      lYTC.add(_ytController);
    }
  }

  @override
  void dispose() {
    for (var element in lYTC) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _ytController = lYTC[widget.index];
    String _id = YoutubePlayer.convertUrlToId(_videoUrlList[widget.index])!;
    String curState = 'undefined';
    if (cStates[_id] != null) {
      curState = cStates[_id] ? 'playing' : 'paused';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 14),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                widget.index == 0
                    ? solutions[0]
                    : widget.index == 1
                        ? solutions[1]
                        : widget.index == 2
                            ? solutions[2]
                            : widget.index == 3
                                ? solutions[3]
                                : widget.index == 4
                                    ? solutions[4]
                                    : widget.index == 5
                                        ? solutions[5]
                                        : widget.index == 6
                                            ? solutions[6]
                                            : widget.index == 7
                                                ? solutions[7]
                                                : widget.index == 8
                                                    ? solutions[8]
                                                    : solutions[9],
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 220.0,
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        child: YoutubePlayer(
                          controller: _ytController,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.lightBlueAccent,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(isExpanded: true),
                            FullScreenButton(),
                          ],
                          onEnded: (YoutubeMetaData _md) {
                            _ytController.seekTo(const Duration(seconds: 0));
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        curState,
                        textScaleFactor: 1.5,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
