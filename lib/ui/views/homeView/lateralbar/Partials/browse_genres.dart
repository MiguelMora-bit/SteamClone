import 'package:flutter/material.dart';
import 'package:steam/ui/views/homeView/lateralbar/widgets/widgets.dart';

class BrowseGenresSection extends StatelessWidget {
  const BrowseGenresSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "BROWSE BY GENRE",
      childs: [
        CustomAnchor(
          text: "Free to Play",
        ),
        CustomAnchor(
          text: "Early Access",
        ),
        CustomAnchor(
          text: "Actions",
        ),
        CustomAnchor(
          text: "Adventure",
        ),
        CustomAnchor(
          text: "Casual",
        ),
        CustomAnchor(
          text: "Indie",
        ),
        CustomAnchor(
          text: "Massively Multiplayer",
        ),
        CustomAnchor(
          text: "Racing",
        ),
        CustomAnchor(
          text: "RPG",
        ),
        CustomAnchor(
          text: "Simulation",
        ),
        CustomAnchor(
          text: "Sports",
        ),
        CustomAnchor(
          text: "Strategy",
        ),
      ],
    );
  }
}
