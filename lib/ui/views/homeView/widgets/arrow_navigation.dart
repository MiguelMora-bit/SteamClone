import 'package:flutter/material.dart';

class ArrowNavigation extends StatefulWidget {
  final IconData icon;
  final Function onPress;
  const ArrowNavigation({
    super.key,
    required this.icon,
    required this.onPress,
  });

  @override
  State<ArrowNavigation> createState() => _ArrowNavigationState();
}

class _ArrowNavigationState extends State<ArrowNavigation> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() {
        isHover = true;
      }),
      onExit: (event) => setState(() {
        isHover = false;
      }),
      child: GestureDetector(
        onTap: () => widget.onPress(),
        child: Container(
          height: 100,
          width: 40,
          color: isHover
              ? const Color.fromARGB(85, 86, 86, 86)
              : const Color.fromARGB(70, 0, 0, 0),
          child: Icon(
            widget.icon,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
