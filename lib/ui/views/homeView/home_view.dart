import 'package:flutter/material.dart';
import 'package:steam/ui/lateralbar/lateralbar.dart';
import 'package:steam/ui/searchbar/searchbar.dart';

import 'card_special_offer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Spacer(
              flex: 10,
            ),
            LataralBar(),
            Spacer(),
            HomeBody(),
            Spacer(
              flex: 10,
            )
          ],
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SearchBar(),
          SizedBox(
            height: 20,
          ),
          FeaturedRecomendationSection(),
          SizedBox(
            height: 50,
          ),
          SpecialOffersSection(),
          SizedBox(
            height: 50,
          ),
          SpecialOffersSection(),
          SizedBox(
            height: 50,
          ),
          SpecialOffersSection()
        ],
      ),
    );
  }
}

class SpecialOffersSection extends StatelessWidget {
  // final BodyResponse body;

  const SpecialOffersSection({
    super.key,
    // required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("SPECIAL OFFERS",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            height: 430,
            child: Row(
              children: [
                const CardSpecialOffers(
                  discountPorcent: '-50%',
                  discountPrice: '\$150',
                  originalPrice: '\$300',
                  pathPhoto:
                      'https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_616x353.jpg?t=1646763462',
                  title: 'Call of duty black ops 3',
                ),
                const CardSpecialOffers(
                  discountPorcent: '-50%',
                  discountPrice: '\$150',
                  originalPrice: '\$300',
                  pathPhoto:
                      'https://cdn.akamai.steamstatic.com/steam/apps/1091500/capsule_616x353.jpg?t=1663663573',
                  title: 'CyberPunk 2077',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SmallCardSpecialOffers(
                      discountPorcent: '-50%',
                      pathImage:
                          'https://cdn.akamai.steamstatic.com/steam/apps/814380/header.jpg?t=1678991267',
                      priceDiscount: '\$150',
                      priceOriginal: '\$300',
                    ),
                    SmallCardSpecialOffers(
                      discountPorcent: '-50%',
                      pathImage:
                          'https://cdn.akamai.steamstatic.com/steam/apps/1174180/header.jpg?t=1671485009',
                      priceDiscount: '\$150',
                      priceOriginal: '\$300',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SmallCardSpecialOffers extends StatelessWidget {
  final String pathImage;
  final String priceOriginal;
  final String priceDiscount;
  final String discountPorcent;

  const SmallCardSpecialOffers({
    super.key,
    required this.pathImage,
    required this.priceOriginal,
    required this.priceDiscount,
    required this.discountPorcent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      color: const Color(0xff21769D),
      child: Column(
        children: [
          Image.network(
            pathImage,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  color: Colors.green,
                  child: FittedBox(
                    child: Text(
                      discountPorcent,
                      style: const TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  color: Colors.teal,
                  height: 40,
                  width: 60,
                  child: Column(
                    children: [
                      Text(
                        priceOriginal,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey[800]),
                      ),
                      Text(priceDiscount)
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



class FeaturedRecomendationSection extends StatelessWidget {
  const FeaturedRecomendationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("FEATURED & RECOMMENDED",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Stack(
              children: [
                const BodySection(),
                Transform.translate(
                  offset: const Offset(-40, 120),
                  child: const BackArrow(),
                ),
                  Transform.translate(
                  offset: const Offset(980, 120),
                  child: const NextArrow(),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NextArrow extends StatelessWidget {
  const NextArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 40,
      color: const Color.fromARGB(70, 0, 0, 0),
      child: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 120,
      child: Container(
        height: 100,
        width: 40,
        color: const Color.fromARGB(70, 0, 0, 0),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: const Color.fromARGB(35, 0, 0, 0),
      child: Row(
        children: [
          const BigImg(
              pathImg:
                  "https://cdn.akamai.steamstatic.com/steam/apps/1361000/capsule_616x353.jpg?t=1635547560"),
          IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "In Silence",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SmallImg(),
                    SmallImg(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SmallImg(),
                    SmallImg(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Now Available",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("\$95.99",
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                      Row(
                        children: const [
                          Icon(
                            Icons.apple,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.window_sharp,
                            color: Colors.white,
                          ),
                          Icon(
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
  const SmallImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: 175,
      child: Image.network(
        "https://cdn.akamai.steamstatic.com/steam/apps/1361000/capsule_184x69.jpg?t=1635547560",
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
