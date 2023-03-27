import 'package:flutter/material.dart';
import 'package:steam/ui/views/homeView/lateralbar/widgets/widgets.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Section(
      title: "DISCOVERY QUEUES",
      childs: [
        CustomAnchor(
          icon: Icons.apps_sharp,
          text: "Recommendations",
        ),
        CustomAnchor(
          icon: Icons.newspaper_outlined,
          text: "New Releases",
        ),
      ],
    );
  }
}
