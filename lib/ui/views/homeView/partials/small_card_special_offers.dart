import 'package:flutter/material.dart';

class SmallCardSpecialOffers extends StatelessWidget {
  final String pathImage;
  final String priceOriginal;
  final String priceDiscount;
  final String discountPorcent;

  const SmallCardSpecialOffers({
    super.key,
    required this.pathImage,
    required this.priceOriginal,
    required this.priceDiscount,
    required this.discountPorcent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      color: const Color(0xff21769D),
      child: Column(
        children: [
          Image.network(
            pathImage,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  color: Colors.green,
                  child: FittedBox(
                    child: Text(
                      discountPorcent,
                      style: const TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  color: Colors.teal,
                  height: 40,
                  width: 60,
                  child: Column(
                    children: [
                      Text(
                        priceOriginal,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey[800]),
                      ),
                      Text(priceDiscount)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
