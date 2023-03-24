import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget {

  final String text;
  final Function onPressed;
  final int delay;

  const CustomMenuItem({
    Key? key,
    required this.text,
    required this.onPressed, 
    this.delay = 0
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      from: 10,
      duration: const Duration(milliseconds: 120),
      delay: Duration( milliseconds: widget.delay ),
      child: MouseRegion(
        onEnter: ( _ ) => setState(() => isHover = true ),
        onExit: ( _ ) => setState(() => isHover = false ),
        child: GestureDetector(
          onTap: () => widget.onPressed(),
          child: AnimatedContainer(
            padding: const EdgeInsets.only(top: 10, left: 5),
            duration: const Duration( milliseconds: 300 ),
            child: Text(
              widget.text,
              style: GoogleFonts.roboto( fontSize: 13, color: isHover ? Colors.white : Colors.grey)
            ),
          ),
        ),
      ),
    );
  }
}