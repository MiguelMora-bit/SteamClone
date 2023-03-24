import 'package:flutter/material.dart';
import 'package:steam/ui/lateralbar/widgets/custom_anchor.dart';

class Section extends StatelessWidget {
  final List<CustomAnchor> childs;
  final String title;

  const Section({
    super.key,
    required this.childs,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          ...childs
        ],
      ),
    );
  }
}
