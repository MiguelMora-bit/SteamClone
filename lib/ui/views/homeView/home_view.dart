import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/providers/featured_provider.dart';
import 'package:steam/ui/shared/footer/footer.dart';
import 'package:steam/ui/views/homeView/lateralbar/lateralbar.dart';
import 'package:steam/ui/searchbar/searchbar.dart';
import 'package:steam/ui/views/homeView/partials/special_offer_section.dart';

import 'partials/features_recomendation_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return FutureBuilder(
        future:
            Provider.of<FeatureProvider>(context, listen: false).getFeatured(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(
                          flex: 10,
                        ),
                        if (size.width > 1250) const LataralBar(),
                        const Spacer(),
                        const HomeBody(),
                        const Spacer(
                          flex: 10,
                        )
                      ],
                    ),
                    if (size.width > 1000) const Footer()
                  ],
                ),
              ),
            );
          }
        });
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FeatureProvider featureProvider =
        Provider.of<FeatureProvider>(context);

    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SearchBar(),
          FeaturedRecomendationSection(
            featureds: featureProvider.featuredsWin,
            title: "WINDOWS",
          ),
          SpecialOffersSection(
            items: featureProvider.specials,
          ),
          FeaturedRecomendationSection(
            featureds: featureProvider.featuredsMac,
            title: "MAC",
          ),
          SpecialOffersSection(
            items: featureProvider.coominsoon,
          ),
          FeaturedRecomendationSection(
            featureds: featureProvider.featuredsLinux,
            title: "LINUX",
          ),
          SpecialOffersSection(
            items: featureProvider.topSellers,
          ),
          SpecialOffersSection(
            items: featureProvider.newReleases,
          ),
        ],
      ),
    );
  }
}
