import 'package:flutter/material.dart';
import 'package:steam/ui/lateralbar/widgets/widgets.dart';

class RecomendedSection extends StatelessWidget {
  const RecomendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "RECOMMENDED",
      childs: [
        CustomAnchor(
          icon: Icons.people_alt,
          text: "By Friends",
        ),
        CustomAnchor(
          icon: Icons.animation_outlined,
          text: "By Curatos",
        ),
        CustomAnchor(
          icon: Icons.label_sharp,
          text: "Tags",
        )
      ],
    );
  }
}
