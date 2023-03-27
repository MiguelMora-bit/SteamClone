import 'package:flutter/material.dart';
import 'package:steam/ui/views/homeView/lateralbar/widgets/widgets.dart';

class SteamCards extends StatelessWidget {
  const SteamCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/steamcards_promo_02.png",
          width: 220,
        ),
        const Section(
            childs: [CustomAnchor(text: "Now Available on Steam")],
            title: "GIFT CARDS")
      ],
    );
  }
}
