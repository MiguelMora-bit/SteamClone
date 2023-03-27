import 'package:flutter/material.dart';
import 'package:steam/ui/views/homeView/lateralbar/widgets/widgets.dart';

class RecentlySection extends StatelessWidget {
  const RecentlySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "RECENTLY VIEWED",
      childs: [
        CustomAnchor(
          text: "Terraria",
        ),
      ],
    );
  }
}
