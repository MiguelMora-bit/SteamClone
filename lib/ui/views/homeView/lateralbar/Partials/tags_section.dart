import 'package:flutter/material.dart';
import 'package:steam/ui/views/homeView/lateralbar/widgets/widgets.dart';

class TagsSection extends StatelessWidget {
  const TagsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "YOUR TAGS",
      childs: [
        CustomAnchor(
          text: "Football (Soccer)",
        ),
        CustomAnchor(
          text: "RTS",
        ),
        CustomAnchor(
          text: "FPS",
        ),
        CustomAnchor(
          text: "Survival",
        ),
        CustomAnchor(
          text: "Gore",
        ),
      ],
    );
  }
}
