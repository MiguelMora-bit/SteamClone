import 'package:flutter/material.dart';
import 'package:steam/models/featured_responses.dart';
import 'package:steam/ui/views/homeView/widgets/arrow_navigation.dart';

class FeaturedRecomendationSection extends StatelessWidget {
  final List<Featured> featureds;
  final String? title;
  const FeaturedRecomendationSection({
    super.key,
    required this.featureds,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("FEATURED & RECOMMENDED  $title",
                    style: const TextStyle(
                        color: Colors.white, overflow: TextOverflow.ellipsis)),
              ),
            ),
          ),
          size.width <= 1000
              ? BodyTableMobil(
                  featureds: featureds,
                )
              : BodyTabletDesktop(
                  featureds: featureds,
                ),
        ],
      ),
    );
  }
}

class BodyTableMobil extends StatelessWidget {
  final List<Featured> featureds;
  const BodyTableMobil({
    super.key,
    required this.featureds,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: featureds.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 250,
                    child: BigImg(pathImg: featureds[index].largeCapsuleImage),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    color: const Color.fromRGBO(20, 37, 53, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          featureds[index].name,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 5),
                          padding: const EdgeInsets.all(5),
                          color: const Color.fromRGBO(76, 107, 34, 1),
                          child: Text(
                            "Up to -${featureds[index].discountPercent}%",
                            style: const TextStyle(color: Colors.yellow),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BodyTabletDesktop extends StatefulWidget {
  final List<Featured> featureds;
  const BodyTabletDesktop({
    super.key,
    required this.featureds,
  });

  @override
  State<BodyTabletDesktop> createState() => _BodyTabletDesktopState();
}

class _BodyTabletDesktopState extends State<BodyTabletDesktop> {
  @override
  Widget build(BuildContext context) {
    int currentFeature = 0;

    void incrementIndex() {
      print("incrementando");
      if (currentFeature == widget.featureds.length - 1) {
        currentFeature = 0;
      } else {
        currentFeature++;
      }

      setState(() {});
    }

    void decrementIndex() {
      if (currentFeature == 0) {
        currentFeature = widget.featureds.length - 1;
      } else {
        currentFeature--;
      }
      setState(() {});
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          BodySection(
            currentFeatured: widget.featureds[currentFeature],
          ),
          Transform.translate(
            offset: const Offset(-20, 120),
            child: ArrowNavigation(
              icon: Icons.arrow_back_ios_new,
              onPress: () => decrementIndex(),
            ),
          ),
          Transform.translate(
            offset: const Offset(960, 120),
            child: ArrowNavigation(
                icon: Icons.arrow_forward_ios, onPress: () => incrementIndex()),
          ),
        ],
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  final Featured currentFeatured;

  const BodySection({
    super.key,
    required this.currentFeatured,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: const Color.fromARGB(35, 0, 0, 0),
      child: Row(
        children: [
          BigImg(pathImg: currentFeatured.largeCapsuleImage),
          IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: SizedBox(
                      width: 200,
                      height: 15,
                      child: Text(
                        currentFeatured.name,
                        style: const TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallImg(
                      pathImage: currentFeatured.largeCapsuleImage,
                    ),
                    SmallImg(
                      pathImage: currentFeatured.largeCapsuleImage,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallImg(
                      pathImage: currentFeatured.largeCapsuleImage,
                    ),
                    SmallImg(
                      pathImage: currentFeatured.largeCapsuleImage,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    currentFeatured.originalPrice != null
                        ? "Now Available"
                        : "Cooming soon",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      currentFeatured.originalPrice != null
                          ? Text(currentFeatured.originalPrice.toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15))
                          : const Spacer(),
                      Row(
                        children: [
                          if (currentFeatured.macAvailable)
                            const Icon(
                              Icons.apple,
                              color: Colors.white,
                            ),
                          if (currentFeatured.windowsAvailable)
                            const Icon(
                              Icons.window_sharp,
                              color: Colors.white,
                            ),
                          if (currentFeatured.linuxAvailable)
                            const Icon(
                              Icons.airplay_sharp,
                              color: Colors.white,
                            )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SmallImg extends StatelessWidget {
  final String pathImage;
  const SmallImg({
    super.key,
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 100,
      width: 175,
      child: Image.network(
        pathImage,
        fit: BoxFit.cover,
      ),
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
