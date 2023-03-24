import 'package:flutter/material.dart';

import 'package:steam/ui/lateralbar/Partials/partials.dart';

class LataralBar extends StatelessWidget {
  const LataralBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SteamCards(),
        RecomendedSection(),
        DiscoverSection(),
        BrowseCategoriesSection(),
        BrowseGenresSection(),
        TagsSection(),
        RecentlySection(),
      ],
    );
  }
}
