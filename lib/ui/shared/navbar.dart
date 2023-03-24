import 'package:flutter/material.dart';
import 'package:steam/providers/sidemenu_provider.dart';
import 'package:steam/ui/shared/widgets/logo.dart';
import 'package:steam/ui/shared/widgets/navbar_end.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 130,
      decoration: buildBoxDecoration(),
      child: Row(
        children: [
          const Spacer(flex: 10),
          if (size.width <= 700) ...[
            const _SideMenuButton(),
            const Spacer(
              flex: 10,
            )
          ],
          const Logo(),
          if (size.width >= 700) ...[
            const Spacer(
              flex: 4,
            ),
            const SizedBox(width: 400,),
            const Spacer(
              flex: 4,
            ),
            const NavbarEnd(),
          ],
          const Spacer(flex: 10),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
      color: Color.fromRGBO(23, 26, 33, 1),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]);
}

class _SideMenuButton extends StatelessWidget {
  const _SideMenuButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.menu_outlined,
          color: Colors.white,
        ),
        onPressed: () => SideMenuProvider.openMenu());
  }
}
