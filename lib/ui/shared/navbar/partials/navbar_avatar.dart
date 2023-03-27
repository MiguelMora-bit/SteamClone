
import 'package:flutter/material.dart';

class NavbarAvatar extends StatelessWidget {
  const NavbarAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(65, 119, 143, 1), width: 2)),
          width: 35,
          height: 35,
          child: Image.network(
            'https://avatars.cloudflare.steamstatic.com/6f982210fe9a377fdb74d9a836e4d670f0fd68fc.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
