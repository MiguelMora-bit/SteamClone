import 'package:flutter/material.dart';

class CardSpecialOffers extends StatelessWidget {
  final String title;
  final String discountPorcent;
  final String originalPrice;
  final String discountPrice;
  final String pathPhoto;

  const CardSpecialOffers({
    super.key,
    required this.title,
    required this.discountPorcent,
    required this.originalPrice,
    required this.discountPrice,
    required this.pathPhoto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      width: 320,
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              pathPhoto,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 80,
            color: const Color(0xff21769D),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
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
                        color: Colors.teal,
                        height: 40,
                        width: 60,
                        child: Column(
                          children: [
                            Text(
                              originalPrice,
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey[800]),
                            ),
                            Text(discountPrice)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}