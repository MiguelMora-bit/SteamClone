import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/models/data_details.dart';
import 'package:steam/providers/search_provider.dart';
import 'package:steam/ui/searchbar/searchbar.dart';
import 'package:video_player/video_player.dart';

class DetailsView extends StatelessWidget {
  final String appId;
  const DetailsView({super.key, required this.appId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          Provider.of<SearchProvider>(context, listen: false).getDetail(appId),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return SingleChildScrollView(
            child: Stack(
              children: [
                const _BackgroundDetail(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _BodyView(),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

class _BodyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SearchProvider searchProvider = Provider.of<SearchProvider>(context);

    final Data currentData = searchProvider.currentData;

    return IntrinsicWidth(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SearchBar(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            currentData.name,
            style: const TextStyle(color: Colors.white, fontSize: 27),
          ),
        ),
        Container(
          color: const Color.fromARGB(88, 0, 0, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 500,
                width: 670,
                child: Column(
                  children: [
                    searchProvider.isVideo
                        ? BigVideo(
                            pathVideo: searchProvider.currentpathImgVideo,
                          )
                        : BigImg(pathImg: searchProvider.currentpathImgVideo),
                    ImagesSlider(
                      screenshots: currentData.screenshots,
                      movies: currentData.movies,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              DetailsRight(
                currentData: currentData,
              ),
            ],
          ),
        ),
      ],
    )
        // :  Container()
        );
  }
}

class ImagesSlider extends StatelessWidget {
  final List<Screenshot> screenshots;
  final List<Movie> movies;

  const ImagesSlider({
    super.key,
    required this.screenshots,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    List<dynamic> juntas = [...movies, ...screenshots];

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: juntas.length,
        itemBuilder: (_, int index) => CardImage(
          isVideo: index >= movies.length ? false : true,
          pathImgVideo: index >= movies.length
              ? juntas[index].pathFull
              : juntas[index].mp4.max,
          pathImage: juntas[index].pathThumbnail,
        ),
      ),
    );
  }
}

class DetailsRight extends StatelessWidget {
  final Data currentData;
  const DetailsRight({
    super.key,
    required this.currentData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // color: Colors.blueAccent,
            height: 140,
            width: 300,
            child: Image.network(currentData.headerImage),
          ),
          _GameDescription(
            description: currentData.shortDescription,
          ),
          // _GameDetails(
          //   score: currentData.metacritic.score,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TAGS",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              Wrap(
                children: const [
                  _CustomTag(label: "Acción"),
                  _CustomTag(label: "Aventura"),
                  _CustomTag(label: "Indie"),
                  _CustomTag(label: "Rol"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _CustomTag extends StatelessWidget {
  final String label;

  const _CustomTag({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(103, 193, 245, 0.2),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(right: 5),
        child: Text(
          label,
          style: const TextStyle(color: Color(0xff67c1f5), fontSize: 11),
        ));
  }
}

class _GameDescription extends StatelessWidget {
  final String description;
  const _GameDescription({required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 10),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class _GameDetails extends StatelessWidget {
  final int score;
  const _GameDetails({required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SCORE",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              Text("ALL REVIEWS",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              const SizedBox(
                height: 10,
              ),
              Text("RELEASE DATE",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              const SizedBox(height: 10),
              Text("DEVELOPER",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              Text("PUBLISHER",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11))
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$score",
                  style: TextStyle(color: Color(0xff67c1f5), fontSize: 11)),
              const Text("875422",
                  style: TextStyle(color: Color(0xff67c1f5), fontSize: 11)),
              const SizedBox(
                height: 10,
              ),
              Text("16 MAY 2011",
                  style: TextStyle(color: Colors.grey[400], fontSize: 11)),
              const SizedBox(height: 10),
              const Text("Re-Logic",
                  style: TextStyle(color: Color(0xff67c1f5), fontSize: 11)),
              const Text("Re-Logic",
                  style: TextStyle(color: Color(0xff67c1f5), fontSize: 11))
            ],
          )
        ],
      ),
    );
  }
}

class _BackgroundDetail extends StatelessWidget {
  const _BackgroundDetail();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(Provider.of<SearchProvider>(context, listen: false)
          .currentData
          .background),
    );
  }
}

class BigImg extends StatelessWidget {
  final String pathImg;

  const BigImg({super.key, required this.pathImg});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      pathImg,
      fit: BoxFit.cover,
    );
  }
}

class BigVideo extends StatefulWidget {
  final String pathVideo;

  const BigVideo({
    super.key,
    required this.pathVideo,
  });

  @override
  State<BigVideo> createState() => _BigVideoState();
}

class _BigVideoState extends State<BigVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.pathVideo)
      ..initialize().then((_) {
        _controller.setVolume(0.2);
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.value.isInitialized) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(_controller),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                print("Abrir reproductor");
              },
              onExit: (_) async {
                await Future(() => const Duration(seconds: 2));
                print("cerrar reproductror");
              },
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                  )),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: VideoBar(
                  controller: _controller,
                ))
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}

class VideoBar extends StatefulWidget {
  final VideoPlayerController controller;
  const VideoBar({super.key, required this.controller});

  @override
  State<VideoBar> createState() => _VideoBarState();
}

class _VideoBarState extends State<VideoBar> {
  bool isPlaying = false;
  double currentVolue = 0.2;
  bool volueOff = false;
  late double lastValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  isPlaying = !isPlaying;
                  widget.controller.value.isPlaying
                      ? widget.controller.pause()
                      : widget.controller.play();
                });
              },
              icon: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
              )),
          const SizedBox(
            width: 15,
          ),
          IconButton(
              onPressed: () async {
                await widget.controller.setVolume(0);
                volueOff = !volueOff;
                if (volueOff) lastValue = currentVolue;
                print(lastValue);
                currentVolue = 0;
                if (volueOff) await widget.controller.setVolume(lastValue);
                setState(() {});
              },
              icon: Icon(
                volueOff ? Icons.volume_mute : Icons.volume_up_rounded,
                color: Colors.white,
              )),
          Slider(
            min: 0,
            max: 0.5,
            value: currentVolue,
            onChanged: (newValue) async {
              currentVolue = newValue;
              await widget.controller.setVolume(currentVolue);
              setState(() {});
            },
            activeColor: Colors.white,
            thumbColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  final String pathImgVideo;
  final bool isVideo;
  final String pathImage;

  const CardImage({
    super.key,
    required this.pathImage,
    required this.pathImgVideo,
    required this.isVideo,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Provider.of<SearchProvider>(context, listen: false)
              .cambiarPathImgVideo(
                  isVideo: isVideo, pathImgVideo: pathImgVideo);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          height: 80,
          width: 130,
          child: Image.network(pathImage),
        ),
      ),
    );
  }
}
