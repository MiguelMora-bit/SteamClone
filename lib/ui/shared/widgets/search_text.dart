import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/providers/search_provider.dart';
import 'package:steam/services/navigation_service.dart';
import 'package:steam/ui/inputs/custom_inputs.dart';

class SearchText extends StatelessWidget {
  const SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context, listen: false);

    return Container(
      margin: const EdgeInsets.all(8),
      height: 30,
      decoration: buildBoxDecoration(),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        onChanged: (value) => searchProvider.term = value,
        decoration: CustomInputs.searchInputDecoration(
            hint: 'Search',
            icon: Icons.search_outlined,
            onPress: () async {
              await searchProvider.getSearch();
              NavigationService.navigateTo('/search');
            }),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.grey.withOpacity(0.1));
}
