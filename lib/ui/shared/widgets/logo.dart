import 'package:flutter/material.dart';
import 'package:steam/services/navigation_service.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => NavigationService.navigateTo('/'),
        child: Image.asset(
          "assets/logo_steam.png",
          width: 210,
          height: 45,
        ),
      ),
    );
  }
}
