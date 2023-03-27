import 'package:flutter/material.dart';
import 'package:steam/ui/views/homeView/lateralbar/widgets/widgets.dart';

class BrowseCategoriesSection extends StatelessWidget {
  const BrowseCategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "BROWSE CATEGORIES",
      childs: [
        CustomAnchor(
          icon: Icons.trending_up_outlined,
          text: "Top Sellers",
        ),
        CustomAnchor(
          icon: Icons.add,
          text: "New Releases",
        ),
        CustomAnchor(
          icon: Icons.access_time,
          text: "Upcoming",
        ),
        CustomAnchor(
          icon: Icons.percent,
          text: "Specials",
        ),
        CustomAnchor(
          icon: Icons.computer,
          text: "VR Titles",
        ),
        CustomAnchor(
          icon: Icons.gamepad,
          text: "Controller-Friendly",
        ),
      ],
    );
  }
}
