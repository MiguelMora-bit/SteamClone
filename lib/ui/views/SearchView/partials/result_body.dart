import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/providers/search_provider.dart';
import 'package:steam/ui/shared/widgets/card_result.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);

    return SizedBox(
      width: 700,
      height: 1000,
      child: ListView.builder(
          itemCount: searchProvider.result.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: CardResult(response: searchProvider.result[index]),
            );
          }),
    );
  }
}
