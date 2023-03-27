import 'package:flutter/material.dart';
import 'package:steam/providers/sidemenu_provider.dart';
import 'package:steam/ui/shared/navbar/navbar.dart';
import 'package:steam/ui/shared/navbar/partials/navbar_options.dart';
import 'package:steam/ui/sidebar/sidebar.dart';

class HomeLayout extends StatefulWidget {
  final Widget child;

  const HomeLayout({Key? key, required this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeLayoutState();
  }
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    SideMenuProvider.menuController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xff1B2838),
        body: Stack(
          children: [
            BodyWidgetChild(widget: widget),

            // Navbar
            const Navbar(),

            size.width <= 1250
                ? SideBarAnimation(size: size)
                : const NavbarOptions(),
          ],
        ));
  }
}

class SideBarAnimation extends StatelessWidget {
  const SideBarAnimation({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: SideMenuProvider.menuController,
        builder: (context, _) => Stack(
              children: [
                if (SideMenuProvider.isOpen)
                  Opacity(
                    opacity: SideMenuProvider.opacity.value,
                    child: GestureDetector(
                      onTap: () => SideMenuProvider.closeMenu(),
                      child: Container(
                        width: size.width,
                        height: size.height,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                Transform.translate(
                  offset: Offset(SideMenuProvider.movement.value, 0),
                  child: const Sidebar(),
                )
              ],
            ));
  }
}

class BodyWidgetChild extends StatelessWidget {
  const BodyWidgetChild({
    super.key,
    required this.widget,
  });

  final HomeLayout widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 130),
        Expanded(child: widget.child),
      ],
    );
  }
}
