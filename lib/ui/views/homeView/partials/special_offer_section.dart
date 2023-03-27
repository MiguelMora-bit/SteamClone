import 'package:flutter/material.dart';
import 'package:steam/models/featured_categories_response.dart';

import 'package:steam/ui/views/homeView/partials/card_special_offer.dart';

class SpecialOffersSection extends StatelessWidget {
  final List<Item> items;

  const SpecialOffersSection({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    int auxBigCard = 0;
    return Container(
      padding: const EdgeInsets.all(10),
      width: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FittedBox(
            child: Expanded(
              child:
                  Text("SPECIAL OFFERS", style: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              height: 430,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardSpecialOffers(
                      discountPorcent: "-${items[index].discountPercent}%",
                      discountPrice: "\$ ${items[index].finalPrice}",
                      originalPrice: "\$ ${items[index].originalPrice}",
                      pathPhoto: items[index].largeCapsuleImage,
                      title: items[index].name,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
