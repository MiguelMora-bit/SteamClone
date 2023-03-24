import 'package:flutter/material.dart';

class CustomAnchor extends StatelessWidget {
  final String text;
  final IconData? icon;

  const CustomAnchor({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const color = Color(0xff5196C1);

    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 2),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Row(
            children: [
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    icon,
                    color: color,
                  ),
                ),
              Text(
                text,
                style: const TextStyle(color: color),
              )
            ],
          ),
        ),
      ),
    );
  }
}
